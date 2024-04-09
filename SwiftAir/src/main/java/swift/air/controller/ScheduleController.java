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
import swift.air.dto.Schedule;
import swift.air.service.ScheduleService;


@Controller
@RequestMapping("/schedule")
@RequiredArgsConstructor
public class ScheduleController {
	private final ScheduleService scheduleService ;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String scheduleAdd() {
		return "schedule/schedule_add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String scheduleAdd(@ModelAttribute Schedule schedule) {
		scheduleService.addSchedule(schedule);
		return "redirect:/schedule/list";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String scheduleModify(@RequestParam int scheduleId, Model model) {
		Schedule schedulemodify= scheduleService.getSchedule(scheduleId);
		model.addAttribute("schedule", schedulemodify);
		return "schedule/schedule_modify";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String scheduleModify(@ModelAttribute Schedule schedule) {
		scheduleService.modifySchedule(schedule);
		return "redirect:/schedule/list";
	}
	
	@RequestMapping("/delete")
	public String scheduleDelete(@RequestParam int scheduleId) {
		scheduleService.removeSchedule(scheduleId);
		return "redirect:/schedule/list";
	}
	
	@RequestMapping(value = "/list")
	public String scheduleList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		Map<String, Object> map=scheduleService.getScheduleList(pageNum);
		
		model.addAttribute("pager", map.get("pager"));
		model.addAttribute("scheduleList", map.get("scheduleList"));
		
		return "schedule/schedule_list";
	}
	
}