package swift.air.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import swift.air.service.MypageService;


@Controller
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	private final MypageService mypageService;
	
	@RequestMapping(value="/mypage")
	public String myFutureJourney(@RequestParam int memberNum, @RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> futureJourney=mypageService.getFutureJourney(memberNum, pageNum);
		
		model.addAttribute("pager", futureJourney.get("pager"));
		model.addAttribute("futureJourneyList", futureJourney.get("futureJourneyList"));
				
		return "mypage/mypage";
	}
	
	@RequestMapping(value="/point")
	public String myPoint() {
		return "mypage/mypage_point";
	}
	
	@RequestMapping(value="/mgrade")
	public String mygrade(@RequestParam int memberNum, Model model) {
		int memberPoint =  mypageService.getMemberPoint(memberNum);
		model.addAttribute("memberPoint",memberPoint);
		
		return "mypage/mypage_mgrade";
	}
	
	@RequestMapping(value="/pointGuide")
	public String myPointGuide() {
		return "mypage/point_guide";
	}
	
}