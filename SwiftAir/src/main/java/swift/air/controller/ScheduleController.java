package swift.air.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Route;
import swift.air.dto.Schedule;
import swift.air.service.RouteService;
import swift.air.service.ScheduleService;


@Controller
@RequestMapping("/schedule")
@RequiredArgsConstructor
public class ScheduleController {
	private final ScheduleService scheduleService;
	private final RouteService routeService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String scheduleAdd() {
		return "schedule/schedule_add";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@ResponseBody
	public String scheduleAdd(@RequestParam("routeFlight") String routeFlight, @RequestBody Schedule schedule) {
		// 해당 항공편에 대한 노선 데이터 가져오기
        Route route = routeService.getRouteByFlight(routeFlight);
		
        if (route != null) {
            // 노선 데이터가 있다면 해당 노선 데이터를 모델에 추가하여 뷰로 전달
        	schedule.setRouteDeparture(routeFlight);
        } else {
            // 노선 데이터가 없을 경우에 대한 처리
            // 예를 들어, 사용자에게 알림을 보여줄 수 있습니다.
            // 여기에서는 간단하게 예외 처리하도록 합니다.
            throw new RuntimeException("해당 항공편에 대한 노선 정보가 없습니다.");
        }
        
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