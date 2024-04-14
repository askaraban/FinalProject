package swift.air.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Member;
import swift.air.dto.Point;
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
		
		model.addAttribute("memberNum", memberNum);
		//Map<String, Object> futureJourney=mypageService.getFutureJourney(memberNum, pageNum);
		//Map<String, Object> pastJourney=mypageService.getPastJourney(memberNum, pageNum);
		
		//model.addAttribute("pager", futureJourney.get("pager"));
		//model.addAttribute("futureJourneyList", futureJourney.get("futureJourneyList"));
		
		//model.addAttribute("pager1", pastJourney.get("pager"));
		//model.addAttribute("pastJourneyList", pastJourney.get("pastJourneyList"));
		
		return "mypage/mypage";
	}
	
	@GetMapping(value="/journeyTable")
	@ResponseBody
	public Map<String, Object> myJourney(@RequestParam(defaultValue = "1")int pageNum
			, @RequestParam(defaultValue = "1") int journey, Model model, HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		int memberNum=loginMember.getMemberNum();
		
		Map<String, Object> journeyData = null;
		
		if (journey == 1) {
			journeyData=mypageService.getFutureJourney(memberNum, pageNum);
		 } else if (journey == 2) {
			 journeyData = mypageService.getPastJourney(memberNum, pageNum);
		 }
		System.out.println("!!!!!!!!!!!!!!!="+journeyData);
		return journeyData;
	}
	
	@PostMapping(value="/pointDetail")
	@ResponseBody
	public List<Point> myPointDetail(@RequestParam Map<String, Object> map, HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		map.put("pointMemberNum", loginMember.getMemberNum());

		List<Point> pointDetail =  mypageService.getPointDetail(map);
		
		return pointDetail;          
	}
	
	@RequestMapping(value="/point")
	public String myPoint(Model model, HttpSession session) {
		Member loginMember=(Member)session.getAttribute("loginMember");
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("pointMemberNum", loginMember.getMemberNum());
		map.put("pointStatus", -1);
		map.put("sort", "point_date desc");
		
		model.addAttribute("pointDetail", mypageService.getPointDetail(map));
		int memberNum=loginMember.getMemberNum();
		model.addAttribute("paymentList", mypageService.getPaymentList(memberNum));
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