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
	
	@RequestMapping(value = "/seatgrade")
	public String resSeatGrade(@RequestParam Map<String, Object> resScheduleSellection, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		//resInfo.put("resDeparture", resScheduleSellection.get("resDeparture"));
		//resInfo.put("resDestination", resScheduleSellection.get("resDestination"));
		//resInfo.put("resDuration", resScheduleSellection.get("resDuration"));
		//resInfo.put("resNumofPassengers", resScheduleSellection.get("resNumofPassengers"));
		resInfo.putAll(resScheduleSellection);
		model.addAttribute("resInfo", resInfo);
		
		
		System.out.println("Reservation Information: " + resInfo);
		
		//return "redirect:/reservation/seatgrade";
		return "reservation/res_seat_grade";
	}
	
	@RequestMapping(value = "/passengersinfo")
	public String resPassengersInfo(@RequestParam Map<String, Object> addSeatGrade, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.put("resSeatGrade", addSeatGrade.get("resSeatGrade"));
		model.addAttribute("resInfo", resInfo);
		
		System.out.println("Reservation Information: " + resInfo);
		
		//return "redirect:/reservation/passengersinfo";
	    return "reservation/res_passengers_info";
	}
	
	@RequestMapping(value = "/seatT")
	public String getResPassengersInfo(@RequestParam Map<String, Object> addPassengerInfo, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.putAll(addPassengerInfo);
		model.addAttribute("resInfo", resInfo);
		
		System.out.println("Reservation Information: " + resInfo);
		
	    //return "redirect:/reservation/seat";
	    return "reservation/res_seat";
	}
	
	@RequestMapping(value = "/seat")
	public String resSeat(Model model) {
		model.addAttribute("seatList",seatService.getSeatList());
		model.addAttribute("reservedSeatList",seatService.getReservedSeatList());
		return "reservation/res_seat";
	}	
	
	
}
