package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*import lombok.extern.slf4j.Slf4j; 이건 로그 기록용*/

@Controller
@RequestMapping("/notice")
public class NoticeController {
	@RequestMapping(value = "/notice_add")
	public String noticeAdd() {
		return "notice/notice_add";
	}	
	
	@RequestMapping(value = "/notice_detail")
	public String noticeDetail() {
		return "notice/notice_detail";
	}
	
	@RequestMapping(value = "/notice_list")
	public String noticeList() {
		return "notice/notice_list";
	}
	
	@RequestMapping(value = "/notice_main")
	public String noticeMain() {
		return "notice/notice_main";
	}
	
	@RequestMapping(value = "/notice_modify")
	public String noticeModify() {
		return "notice/notice_modify";
	}
}