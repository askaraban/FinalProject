package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ScheduleController {
	
	@RequestMapping(value = "/schedule/add")
	public String scheduleAdd() {
		return "schedule/schedule_add";
	}
	
	@RequestMapping(value = "/schedule/modify")
	public String scheduleModify() {
		return "schedule/schedule_modify";
	}
	
	@RequestMapping(value = "/schedule/list")
	public String scheduleList() {
		return "schedule/schedule_list";
	}	
	
}