package swift.air.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import swift.air.dto.Member;
import swift.air.service.MypageService;


@Controller
@RequestMapping("/mypage")
public class MypageController {
	@Autowired
	private MypageService mypageService;
	
	@RequestMapping(value="/mypage")
	public String mypage() {
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