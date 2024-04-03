package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/mypage")
public class MypageController {
	@RequestMapping(value="/mypage")
	public String mypage() {
		return "mypage/mypage";
	}
	
	@RequestMapping(value="/point")
	public String myPoint() {
		return "mypage/mypage_point";
	}
	
	@RequestMapping(value="/mgrade")
	public String mygrade() {
		return "mypage/mypage_mgrade";
	}
	
	@RequestMapping(value="/pointGuide")
	public String myPointGuide() {
		return "mypage/point_guide";
	}
	
}
