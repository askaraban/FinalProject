package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import lombok.RequiredArgsConstructor;
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

	@RequestMapping(value = "/event/modify")
	public String eventModify() {
		return "event/event_modify";
	}
	
	@RequestMapping(value = "/event/main")
	public String eventMain() {
		return "event/event_main";
	}
	
	@RequestMapping(value = "/event/detail")
	public String eventDetail() {
		return "event/event_detail";
	}
	
	@RequestMapping(value = "/event/list")
	public String eventList() {
		return "event/event_list";
	}
}
	
	