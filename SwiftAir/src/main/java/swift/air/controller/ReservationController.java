package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

//페이지 테스트용 ReservationController
@Controller
@Slf4j
public class ReservationController {
	@RequestMapping(value = "/reservation/seatgrade")
	public String resSeatGrade() {
		log.info("[/resSeatGrade] 페이지 요청 : HelloController 클래스의 resSeatGrade() 메소드 호출");
		return "reservation/res_seat_grade";
	}
	
	@RequestMapping(value = "/reservation/passengerinfo")
	public String resPassengersInfo() {
		log.info("[/resPassengersInfo] 페이지 요청 : HelloController 클래스의 resPassengersInfo() 메소드 호출");
		return "reservation/res_passengers_info";
	}
	
	@RequestMapping(value = "/reservation/ticketconfirm")
	public String resTicketConfirm() {
		log.info("[/resTicketConfirm] 페이지 요청 : HelloController 클래스의 resTicketConfirm() 메소드 호출");
		return "reservation/res_ticket_confirm";
	}	
}
