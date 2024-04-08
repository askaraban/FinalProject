package swift.air.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import swift.air.service.SeatService;


//Reservation 테스트
@Controller
@RequestMapping(value = "/reservation")
@RequiredArgsConstructor
public class ReservationController {
	private final SeatService seatService;
	
	@RequestMapping(value = "/seatgrade")
	public String resSeatGrade(Model model,
			@ModelAttribute("resDeparture") String resDeparture,
			@ModelAttribute("resDestination") String resDestination, 
			@ModelAttribute("resDuration") String resDuration,
			@ModelAttribute("resNumofPassengers") String resNumofPassengers) {
	    
		model.addAttribute("resDeparture", resDeparture);
		model.addAttribute("resDestination", resDestination);
		model.addAttribute("resDuration", resDuration);
		model.addAttribute("resNumofPassengers", resNumofPassengers);
		
		System.out.println("resDeparture: " + resDeparture);
		System.out.println("resDestination: " + resDestination);
		System.out.println("resDuration: " + resDuration);
		System.out.println("resNumofPassengers: " + resNumofPassengers);
		
		return "reservation/res_seat_grade";
	}
	
	@RequestMapping(value = "/passengerinfo")
	public String resPassengersInfo(Model model,
			@ModelAttribute("resDeparture") String resDeparture,
			@ModelAttribute("resDestination") String resDestination, 
			@ModelAttribute("resDuration") String resDuration,
			@ModelAttribute("resNumofPassengers") String resNumofPassengers,
			@ModelAttribute("resSeatGrade") String resSeatGrade) {
		
		model.addAttribute("resDeparture", resDeparture);
		model.addAttribute("resDestination", resDestination);
		model.addAttribute("resDuration", resDuration);
		model.addAttribute("resNumofPassengers", resNumofPassengers);
		model.addAttribute("resSeatGrade", resSeatGrade);

		System.out.println("resDeparture: " + resDeparture);
		System.out.println("resDestination: " + resDestination);
		System.out.println("resDuration: " + resDuration);
		System.out.println("resNumofPassengers: " + resNumofPassengers);
		System.out.println("resSeatGrade: " + resSeatGrade);
		
		return "reservation/res_passengers_info";
	}
	
	@RequestMapping(value = "/ticketconfirm")
	public String resTicketConfirm() {
		return "reservation/res_ticket_confirm";
	}
	
	@RequestMapping(value = "/seat")
	public String resSeat(Model model) {
		model.addAttribute("seatList",seatService.getSeatList());
		model.addAttribute("reservedSeatList",seatService.getReservedSeatList());
		return "reservation/res_seat";
	}	
	
	
}
