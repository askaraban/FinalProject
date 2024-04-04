package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

//5252
@Controller
@Slf4j
public class ReservationController {
	@RequestMapping(value = "/reservation/seatgrade")
	public String resSeatGrade() {
		log.info("�ѱ��׽�Ʈ��");
		return "reservation/res_seat_grade";
	}
	
	@RequestMapping(value = "/reservation/passengerinfo")
	public String resPassengersInfo() {
		log.info("[/resPassengersInfo] ������ ��û : ReservationController Ŭ������ resPassengersInfo() �޼ҵ� ȣ��");
		return "reservation/res_passengers_info";
	}
	
	@RequestMapping(value = "/reservation/ticketconfirm")
	public String resTicketConfirm() {
		log.info("[/resTicketConfirm] ������ ��û : ReservationController Ŭ������ resTicketConfirm() �޼ҵ� ȣ��");
		return "reservation/res_ticket_confirm";
	}
	
	@RequestMapping(value = "/reservation/seat")
	public String resSeat() {
		log.info("[/resSeat] ������ ��û : ReservationController Ŭ������ resSeat() �޼ҵ� ȣ��");
		return "reservation/res_seat";
	}	
}