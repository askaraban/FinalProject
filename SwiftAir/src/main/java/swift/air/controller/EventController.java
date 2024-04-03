package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

//페이지 테스트용 EventController
@Controller
@Slf4j
public class EventController {
	@RequestMapping(value = "/event/add")
	public String eventAdd() {
		log.info("[/eventAdd] 페이지 요청 : EventController 클래스의 eventAdd() 메소드 호출");
		return "event/event_add";
	}

	@RequestMapping(value = "/event/modify")
	public String eventModify() {
		log.info("[/eventModify] 페이지 요청 : EventController 클래스의 eventModify() 메소드 호출");
		return "event/event_modify";
	}
	
	@RequestMapping(value = "/event/main")
	public String eventMain() {
		log.info("[/eventMain] 페이지 요청 : EventController 클래스의eventMain() 메소드 호출");
		return "event/event_main";
	}
	
	@RequestMapping(value = "/event/detail")
	public String eventDetail() {
		log.info("[/eventDetail] 페이지 요청 : EventController 클래스의 eventDetail() 메소드 호출");
		return "event/event_detail";
	}
	
	@RequestMapping(value = "/event/list")
	public String eventList() {
		log.info("[/eventList] 페이지 요청 : EventController 클래스의 eventList() 메소드 호출");
		return "event/event_list";
	}
}
	
	