package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


//Reservation 테스트
@Controller
@RequestMapping(value = "/reservation")
public class ReservationController {
	@RequestMapping(value = "/seatgrade")
	public String resSeatGrade() {
		return "reservation/res_seat_grade";
	}
	
	@RequestMapping(value = "/passengerinfo")
	public String resPassengersInfo() {
		return "reservation/res_passengers_info";
	}
	
	@RequestMapping(value = "/ticketconfirm")
	public String resTicketConfirm() {
		return "reservation/res_ticket_confirm";
	}
	
	@RequestMapping(value = "/seat")
	public String resSeat() {
		return "reservation/res_seat";
	}	
}
