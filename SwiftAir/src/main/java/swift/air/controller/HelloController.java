package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HelloController {
	@RequestMapping(value = "/reservation")
	public String resSchedule() {
		return "reservation/res_schedule";
	}	

	@RequestMapping(value = "/login_test")
	public String testLogin() {
		return "member/login2";
	}	
	
	@RequestMapping(value = "/hello")
	public String helloViewName() {
		return "mypage/mypage";
	}	
	
	@RequestMapping("/faq")
	public ModelAndView helloModelAndView() {
		ModelAndView modelAndView=new ModelAndView("faq/faq_list");
		
		return modelAndView;
	}
}