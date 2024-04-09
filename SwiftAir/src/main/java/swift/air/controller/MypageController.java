package swift.air.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Member;
import swift.air.service.MypageService;


@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	private final MypageService mypageService;
	
	@RequestMapping(value="/")
	public String myFutureJourney(@RequestParam(defaultValue = "1")int pageNum
			, Model model, HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		int memberNum=loginMember.getMemberNum();
		
		Map<String, Object> futureJourney=mypageService.getFutureJourney(memberNum, pageNum);
		
		model.addAttribute("pager", futureJourney.get("pager"));
		model.addAttribute("futureJourneyList", futureJourney.get("futureJourneyList"));
		
		return "mypage/mypage";
	}
	
	@RequestMapping(value="/point")
	@ResponseBody
	public String myPoint(@RequestParam int pointStatus, @RequestParam int sortNum
			, Model model, HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		model.addAttribute("pointDetail", mypageService.getPointDetail(loginMember.getMemberNum()));
		
		return "mypage/mypage_point";
	}
	
	
	@RequestMapping(value="/mgrade")
	public String mygrade(Model model, HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		int memberNum=loginMember.getMemberNum();
		
		int memberPoint =  mypageService.getMemberPoint(memberNum);
		model.addAttribute("memberPoint",memberPoint);
		
		return "mypage/mypage_mgrade";
	}
	
	@RequestMapping(value="/pointGuide")
	public String myPointGuide() {
		return "mypage/point_guide";
	}
	
}