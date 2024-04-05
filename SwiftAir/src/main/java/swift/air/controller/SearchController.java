package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import swift.air.service.SeatService;


@Controller
@Slf4j
@RequestMapping("/search")

public class SearchController {
	
	
	@RequestMapping(value = "/reservation")
	public String searchReservation() {
		log.info("[/searchReservation] 페이지 요청 : SearchController 클래스의 searchReservation() 메소드 호출");
		return "search/search_reservation";
	}
	
	@RequestMapping(value = "/destination")
	public String searchDestination() {
		log.info("[/searchReservation] 페이지 요청 : SearchController 클래스의 searchReservation() 메소드 호출");
		return "search/search_destination";
	}
	
	@RequestMapping(value = "/schedule")
	public String searchSchedule() {
		log.info("[/searchSchedule] 페이지 요청 : SearchController 클래스의 searchSchedule() 메소드 호출");
		return "search/search_schedule";
	}
	
	
}
