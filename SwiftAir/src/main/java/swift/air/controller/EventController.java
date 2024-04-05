package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/event")
public class EventController {
	@RequestMapping(value = "/event/add")
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
	
	