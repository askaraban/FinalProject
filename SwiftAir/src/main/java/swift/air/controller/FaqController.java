package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*import lombok.extern.slf4j.Slf4j; 이건 로그 기록용*/

@Controller
@RequestMapping("/faq")
public class FaqController {
	
	@RequestMapping(value = "/add" , method = RequestMethod.GET)
	public String noticeAdd() {
		return "notice/notice_add";
	}	

	/*
	@RequestMapping(value = "/faq_list")
	public String noticeList() {
		return "faq/faq_list";
	}
	
	@RequestMapping(value = "/faq_main")
	public String noticeMain() {
		return "faq/faq_main";
	}
	
	@RequestMapping(value = "/faq_modify")
	public String noticeModify() {
		return "faq/faq_modify";
	}
	*/
}