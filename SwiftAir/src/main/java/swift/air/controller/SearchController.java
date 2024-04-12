package swift.air.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import swift.air.dto.Member;
import swift.air.dto.Search;
import swift.air.service.SearchService;
import swift.air.service.SeatService;


@Controller
@Slf4j
@RequestMapping("/search")
@AllArgsConstructor
public class SearchController {
	private final SearchService service;
	
	@RequestMapping(value = "/reservation")
	public String searchReservation(HttpSession session, Model model) {
		
		Member member = (Member)session.getAttribute("loginMember");
		
		if(member==null) {
			return "redirect:/member/login";
		}
		model.addAttribute("searchList1", service.getSearchList1(member.getMemberNum()));
		System.out.println(member.getMemberNum());
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
