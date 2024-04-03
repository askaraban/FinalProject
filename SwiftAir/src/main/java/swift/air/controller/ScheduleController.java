package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;


//페이지 테스트용 ScheduleController
@Controller
@Slf4j
public class ScheduleController {
	@RequestMapping(value = "/schedule/add")
	public String scheduleAdd() {
		log.info("[/scheduleAdd] 페이지 요청 : ScheduleController 클래스의 scheduleAdd() 메소드 호출");
		return "schedule/schedule_add";
	}
	
	@RequestMapping(value = "/schedule/modify")
	public String scheduleModify() {
		log.info("[/scheduleModify] 페이지 요청 : ScheduleController 클래스의 scheduleModify() 메소드 호출");
		return "schedule/schedule_modify";
	}
	
	@RequestMapping(value = "/schedule/list")
	public String scheduleList() {
		log.info("[/scheduleList] 페이지 요청 : ScheduleController 클래스의 scheduleList() 메소드 호출");
		return "schedule/schedule_list";
	}	
}
