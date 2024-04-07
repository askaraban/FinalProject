package swift.air.controller;

import java.io.File;
import java.io.IOException;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Event;
import swift.air.service.EventService;

@Controller
@RequestMapping("/event")
@RequiredArgsConstructor
public class EventController {
	private final WebApplicationContext context;
	private final EventService eventService;
	
	/*
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String eventAdd() {
		return "event/event_add"; 
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String eventAdd(@ModelAttribute Event event
			, @RequestParam(value = "dateRange", required = false) String dateRange
			, @RequestParam(value = "file", required = false) MultipartFile eventFile) throws IOException {
		if (dateRange.isEmpty() || dateRange.isBlank()) {
			return "redirect:/event/add";
        }
		
		// dateRange를 파싱하여 시작일과 종료일로 분리하여 이벤트 객체에 설정
        String[] dates = dateRange.split(" - ");
        String startDate = dates[0];
        String endDate = dates[1];
        event.setEventStart(startDate);
        event.setEventEnd(endDate);
		
		//전달파일을 저장하기 위한 서버 디렉토리의 시스템 경로를 반환받아 저장
		String uploadDirectory=context.getServletContext().getRealPath("/img/event");
		
		File file=new File(uploadDirectory);
		
		//전달파일을 서버 디렉토리에 저장되도록 업로드 처리
		eventFile.transferTo(file);
		
		//전달값을 EVENT 테이블의 행으로 삽입 처리
		eventService.addEvent(event);
		
		return "redirect:/event/list";
	}
	*/
	
	/*
	@RequestMapping(value = "/modify")
	public String eventModify() {
		return "event/event_modify";
	}
	*/
	
	@RequestMapping("/list")
	public String eventList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map=eventService.getEventList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("eventList", map.get("eventList"));
		
		return "event/event_list";
	}

	@RequestMapping("/delete")
	public String eventDelete(@RequestParam int eventId) {
		//삭제될 게시글을 반환받아 저장 - 파일명을 제공받기 위해 사용
		Event event=eventService.getEvent(eventId);
		//String uploadDirectory=context.getServletContext().getRealPath("/img/event");
		//서버 디렉토리에 저장된 게시글의 파일 삭제 처리
		//new File(uploadDirectory).delete();		
		
		eventService.removeEvent(eventId);
		return "redirect:/event/list";
	}

	
	@RequestMapping("/main")
	public String eventMain(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map=eventService.getEventListByStatus(pageNum);
		
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("eventList", map.get("eventList"));
	
		return "event/event_main";
	}
	
	@RequestMapping(value = "/detail")
	public String eventDetail() {
		return "event/event_detail";
	}
	
}
	
	