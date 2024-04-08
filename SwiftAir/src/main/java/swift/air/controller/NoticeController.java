package swift.air.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Notice;
import swift.air.service.NoticeService;

/*import lombok.extern.slf4j.Slf4j; 이건 로그 기록용*/

@Controller
@RequestMapping("/notice")
@RequiredArgsConstructor
public class NoticeController {
	private final NoticeService noticeService;
 
	@RequestMapping(value = "/add" , method = RequestMethod.GET)
	public String noticeAdd() {
		return "notice/notice_add";
	}	
	
	
	
	
	@RequestMapping(value = "/add" , method = RequestMethod.POST)
	public String noticeAdd(@ModelAttribute Notice notice) {
		noticeService.addNotice(notice);
		return "redirect:/notice/list";
	}	
	
	
	
	@RequestMapping(value = "/detail")
	public String noticeDetail(@RequestParam int noticeId, Model model) {
		Notice noticedetail= noticeService.getNotice(noticeId);
		model.addAttribute("noticedetail", noticedetail);
		return "notice/notice_detail";
	}
	
	@RequestMapping(value = "/list")
	public String noticeList(@RequestParam(defaultValue = "1") int pageNum,Model model) {
		Map<String, Object> map=noticeService.getNoticeList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("noticeList", map.get("noticeList"));
		
		return "notice/notice_list";
	}
	
	
	@RequestMapping(value = "/main")
	public String noticeMain(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map=noticeService.getNoticeList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("noticeList", map.get("noticeList"));
		return "notice/notice_main";
	}
	
	
	@RequestMapping(value = "/modify")
	public String noticeModify() {
		return "notice/notice_modify";
	}

}