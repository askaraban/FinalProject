package swift.air.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.RequiredArgsConstructor;
import lombok.val;
import swift.air.dto.Passenger;
import swift.air.service.ReservationService;
import swift.air.service.SeatService;


//Reservation 테스트
@Controller
@SessionAttributes("resInfo")
@RequestMapping(value = "/reservation")
@RequiredArgsConstructor
public class ReservationController {
	private final SeatService seatService;
	private final ReservationService reservationService;
	
	@ModelAttribute("resInfo")
    public Map<String, Object> resInfo() {
        return new HashMap<>();
    }
	
	@RequestMapping(value = "/seatgrade")
	public String resSeatGrade(@RequestParam Map<String, Object> resScheduleSellection, Model model
			, @RequestParam String resDeparture, @RequestParam String resDestination, @RequestParam String resDepartDate) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		//Passenger flightList = reservationService.getFlight(resDeparture, resDestination, resDepartDate);

		resInfo.putAll(resScheduleSellection);
		model.addAttribute("resInfo", resInfo);
		//model.addAttribute("flightList", flightList);
		
		System.out.println("Reservation Information: " + resInfo);
		//System.out.println("Flight Information: " + flightList);
		
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
	
	@RequestMapping(value = "/seat1")
	public String getResPassengersInfo1(@RequestParam(value = "resPassenger", required = true) List<String> values
			, Model model, @RequestParam(value = "resPassengerBirth", required = true) List<String> birth
			, @RequestParam Map<String, Object> addResMember) {
		model.addAttribute("seatList",seatService.getSeatList());
		model.addAttribute("reservedSeatList",seatService.getReservedSeatList());
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		
		resInfo.putAll(addResMember);
		
		resInfo.put("addPassengerInfo", values);
		resInfo.put("addPassengerBirth", birth);
		model.addAttribute("resInfo", resInfo);
		model.addAttribute("values", values);
		model.addAttribute("bitrh", birth);
		
		
		System.out.println("Reservation Information: " + resInfo);
	    //return "redirect:/reservation/seat";
	    return "reservation/res_seat_dep";
	}
	@RequestMapping(value = "/seat2")
	public String getResPassengersInfo2(@RequestParam(value = "selSeat1", required = true) List<String> values2
			, Model model, @RequestParam Map<String, Object> addPassengerSeat1) {
		model.addAttribute("seatList",seatService.getSeatList());
		model.addAttribute("reservedSeatList",seatService.getReservedSeatList());
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.putAll(addPassengerSeat1);
		
		resInfo.put("selSeat1", values2);
		model.addAttribute("resInfo", resInfo);
		
		
		System.out.println("Reservation Information: " + resInfo);
		//return "redirect:/reservation/seat";
		return "reservation/res_seat_arr";
	}
	
	@RequestMapping(value = "/confirm")
	public String getResPassengersInfo3(@RequestParam(value = "selSeat2", required = true) List<String> values3
			, Model model, @RequestParam Map<String, Object> addPassengerSeat2) {
		model.addAttribute("seatList",seatService.getSeatList());
		model.addAttribute("reservedSeatList",seatService.getReservedSeatList());
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.putAll(addPassengerSeat2);
		
		resInfo.put("selSeat2", values3);
		model.addAttribute("resInfo", resInfo);
		
		
		System.out.println("Reservation Information: " + resInfo);
		//return "redirect:/reservation/seat";
		return "reservation/res_ticket_confirm";
	}
	
	
}
