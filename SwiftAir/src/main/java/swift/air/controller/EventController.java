package swift.air.controller;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
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
	public String eventAdd(Model model) {
		model.addAttribute("event", new Event());
		return "event/event_add"; 
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String eventAdd(@ModelAttribute Event event, @RequestParam MultipartFile multipartFile, 
			@RequestParam MultipartFile multipartFile2) throws IOException {
		if(multipartFile.isEmpty()) {
			return "event/event_add";
		}
		
		String uploadDirectory=context.getServletContext().getRealPath("/resources/assets/img/event");

		event.setEventImg1(UUID.randomUUID().toString()+"_"+multipartFile.getOriginalFilename());
		event.setEventImg2(UUID.randomUUID().toString()+"_"+multipartFile2.getOriginalFilename());

		//전달파일을 서버 디렉토리에 저장되도록 업로드 처리
		multipartFile.transferTo(new File(uploadDirectory, event.getEventImg1()));
		multipartFile2.transferTo(new File(uploadDirectory, event.getEventImg2()));
		
		//전달값과 업로드 처리된 파일명을 FILE_BOARD 테이블의 행으로 삽입 처리
		eventService.addEvent(event);

        return "redirect:/event/list";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String eventModify(@RequestParam int eventId, Model model) {
		Event eventmodify= eventService.getEvent(eventId);
		model.addAttribute("eventmodify", eventmodify);
		return "event/event_modify";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String eventModify(@ModelAttribute Event event, @RequestParam(required = false) MultipartFile multipartFile,
						        @RequestParam(required = false) MultipartFile multipartFile2) throws IOException {
		
		//기존의 이벤트 정보
	    Event exEvent = eventService.getEvent(event.getEventId());
	   
	    //대표 이미지 변경 확인 후 새로운 파일로 변경
	    if (multipartFile != null && !multipartFile.isEmpty()) {
	        String uploadDirectory = context.getServletContext().getRealPath("/resources/assets/img/event");
	        String newFileName = UUID.randomUUID().toString() + "_" + multipartFile.getOriginalFilename();
	        
	        //새로운 파일 서버 업로드
	        multipartFile.transferTo(new File(uploadDirectory, newFileName));
	        
	        //기존 파일 삭제
	        if (exEvent.getEventImg1() != null) {
	            new File(uploadDirectory, exEvent.getEventImg1()).delete();
	        }
	        
	     // 업데이트된 파일명 이벤트 객체에 설정
	        event.setEventImg1(newFileName);
	    } else {
	        // 수정된 파일이 없는 경우 기존 파일명 유지
	        event.setEventImg1(exEvent.getEventImg1());
	    }
	
	    if (multipartFile2 != null && !multipartFile2.isEmpty()) {
	        String uploadDirectory = context.getServletContext().getRealPath("/resources/assets/img/event");
	        String newFileName = UUID.randomUUID().toString() + "_" + multipartFile2.getOriginalFilename();
	        
	        multipartFile2.transferTo(new File(uploadDirectory, newFileName));
	        
	        if (exEvent.getEventImg2() != null) {
	            new File(uploadDirectory, exEvent.getEventImg2()).delete();
	        }
	        
	        event.setEventImg2(newFileName);
	    } else {
            event.setEventImg2(exEvent.getEventImg2());
        }
	    
	    //이벤트 정보 업데이트
	    eventService.modifyEvent(event);
	    
	    return "redirect:/event/list";
	}
	
	
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
		
		if (event != null) { // event가 null이 아닌 경우에만 처리
			String uploadDirectory=context.getServletContext().getRealPath("/resources/assets/img/event");
			//서버 디렉토리에 저장된 게시글의 파일 삭제 처리
			if (event.getEventImg1() != null) {
				new File(uploadDirectory, event.getEventImg1()).delete();	
			}
	        if (event.getEventImg2() != null) {
	        	new File(uploadDirectory, event.getEventImg2()).delete();		
	        }
	        
	        eventService.removeEvent(eventId);
		}
        
		return "redirect:/event/list";
	}

	/*
	@RequestMapping("/main")
	public String eventMain(@RequestParam(defaultValue = "1") int pageNum, Model model,
			@RequestParam(defaultValue = "0") int statusId) {
		Map<String, Object> map = eventService.getEventListByStatus(pageNum, statusId);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("eventList", map.get("eventList"));
		
		if (statusId == 0) {
			LocalDate currentDate = LocalDate.now();
			List<Event> ongoingEvents = eventService.getOngoingEvents(currentDate);
			model.addAttribute("ongoingEvents", ongoingEvents);
			
			// 진행 중인 이벤트 처리
		} else {
			LocalDate currentDate = LocalDate.now();
			List<Event> endedEvents = eventService.getEndedEvents(currentDate);
			model.addAttribute("ongoingEvents", endedEvents);
			// 종료된 이벤트 처리
		}
	
		return "event/event_main";
	}
	*/

	@RequestMapping("/main")
	public String eventMain(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map = eventService.getEventList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("eventList", map.get("eventList"));
		
		return "event/event_main";
	}
	
	@RequestMapping(value = "/detail")
	public String eventDetail(@RequestParam int eventId, Model model) {
		Event eventdetail= eventService.getEvent(eventId);
		model.addAttribute("eventdetail", eventdetail);
		return "event/event_detail";
	}
	
}
	
	