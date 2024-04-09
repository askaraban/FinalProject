package swift.air.controller;



import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.RequiredArgsConstructor;
import swift.air.service.SeatService;


//Reservation 테스트
@Controller
@SessionAttributes("resInfo")
@RequestMapping(value = "/reservation")
@RequiredArgsConstructor
public class ReservationController {
	private final SeatService seatService;
	
	@ModelAttribute("resInfo")
    public Map<String, Object> resInfo() {
        return new HashMap<>();
    }
	
	@RequestMapping(value = "/scheduleAction")
	public String getResSchedule(@RequestParam Map<String, Object> resScheduleSellection, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.asMap().get("resInfo");
		
		resInfo.put("resDeparture", resScheduleSellection.get("resDeparture"));
		resInfo.put("resDestination", resScheduleSellection.get("resDestination"));
		resInfo.put("resDuration", resScheduleSellection.get("resDuration"));
		resInfo.put("resNumofPassengers", resScheduleSellection.get("resNumofPassengers"));
		model.addAttribute("resInfo", resInfo);
		
		return "redirect:/reservation/seatgrade";
	}
	
	@RequestMapping(value = "seatgrade")
	public String resSeatGrade() {
		return "reservation/res_seat_grade";
	}
	
	@RequestMapping(value = "/seatGradeAction")
	public String getResSeatGrade(@RequestParam Map<String, Object> addSeatGrade, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.put("resSeatGrade", addSeatGrade.get("resSeatGrade"));
		model.addAttribute("resInfo", resInfo);
		
		System.out.println("Reservation Information: " + resInfo);
		
	    return "redirect:/reservation/respassengersinfo";
	}
	
	@RequestMapping(value = "/respassengersinfo")
	public String resPassengersInfo() {
		return "reservation/res_passengers_info";
	}
	
	@RequestMapping(value = "/passengerInfoAction")
	public String getResPassengersInfo(@RequestParam Map<String, Object> addPassengerInfo, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.putAll(addPassengerInfo);
		model.addAttribute("resInfo", resInfo);
		
		System.out.println("Reservation Information: " + resInfo);
		
	    return "redirect:/reservation/seat";
	}
	
	@RequestMapping(value = "/seat")
	public String resSeat(Model model) {
		model.addAttribute("seatList",seatService.getSeatList());
		model.addAttribute("reservedSeatList",seatService.getReservedSeatList());
		return "reservation/res_seat";
	}	
	
	
}
