package swift.air.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String eventAdd() {
		return "event/event_add"; 
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String eventAdd(@ModelAttribute Event event
			, @RequestParam List<MultipartFile> eventFileList) throws IOException {

		//전달파일을 저장하기 위한 서버 디렉토리의 시스템 경로를 반환받아 저장
		String uploadDirectory=context.getServletContext().getRealPath("/resources/asset/img/event");
		
		//업로드 처리된 모든 파일의 이름을 저장하기 위한 List 객체 생성
		List<String> eventnameList=new ArrayList<String>();
		
		for(MultipartFile multipartFile : eventFileList) {
			if(multipartFile.isEmpty() || !multipartFile.getContentType().equals("image/jpeg")) {
				return "event/add";
			}
			
			//전달파일을 서버 디렉토리에 저장되도록 업로드 처리
			String eventFilename=UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename();
			File file=new File(uploadDirectory, eventFilename);
			multipartFile.transferTo(file);
			
			//List 객체에 업로드 처리된 파일명을 요소값으로 추가하여 저장
			eventnameList.add(eventFilename);
		}
	    
	    // 전달값과 업로드 처리된 파일명을 FILE_BOARD 테이블의 행으로 삽입 처리
	    eventService.addEvent(event);
		
		return "redirect:/event/list";
	}
	
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
		Map<String, Object> map=eventService.getEventList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("eventList", map.get("eventList"));
	
		return "event/event_main";
	}
	
	@RequestMapping(value = "/detail")
	public String eventDetail() {
		return "event/event_detail";
	}
	
}
	
	