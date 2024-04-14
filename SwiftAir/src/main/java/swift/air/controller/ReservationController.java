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
	
	@RequestMapping(value = "/seatgrade1")
	public String resSeatGrade(@RequestParam Map<String, Object> resScheduleSellection, Model model
			, @RequestParam int resPassengerCnt
			, @RequestParam String resDeparture
			, @RequestParam String resDestination
			, @RequestParam String resDepartDate
			, @RequestParam String resReturnDate) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		val departureFlight = reservationService.chooseFlight(resDepartDate, resDeparture, resDestination);
	    val returnFlight = reservationService.chooseFlight(resReturnDate, resDestination, resDeparture);
	    
	    if (departureFlight == null || returnFlight == null) {
	        model.addAttribute("alertMessage", "조회하신 항공편은 없는 항공편이거나 선택이 불가능한 항공편입니다.");
	        return "reservation/res_schedule";
	    }
		
		resInfo.putAll(resScheduleSellection);
		resInfo.put("scheduleId1", reservationService.chooseFlight(resDepartDate, resDeparture, resDestination).getScheduleId());
		resInfo.put("scheduleId2", reservationService.chooseFlight(resReturnDate, resDestination, resDeparture).getScheduleId());
		resInfo.put("scheduleDepartureDate", reservationService.chooseFlight(resDepartDate, resDeparture, resDestination).getScheduleDepartureDate());
		resInfo.put("scheduleArrivalDate", reservationService.chooseFlight(resDepartDate, resDeparture, resDestination).getScheduleArrivalDate());
		resInfo.put("routeDeparture", reservationService.chooseFlight(resDepartDate, resDeparture, resDestination).getScheduleArrivalDate());
		resInfo.put("routeDestination", reservationService.chooseFlight(resDepartDate, resDeparture, resDestination).getRouteDestination());
		resInfo.put("routeFlight", reservationService.chooseFlight(resDepartDate, resDeparture, resDestination).getRouteFlight());
		resInfo.put("routePrice", reservationService.chooseFlight(resDepartDate, resDeparture, resDestination).getRoutePrice());
		model.addAttribute("resInfo", resInfo);
		
		System.out.println("Reservation Information: " + resInfo);
		
		return "reservation/res_seat_grade_dep";
	}
	
	@RequestMapping(value = "/seatgrade2")
	public String resPassengersInfo1(@RequestParam String resDepSeatGrade, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.put("resDepSeatGrade", resDepSeatGrade);
		model.addAttribute("resInfo", resInfo);
		
		System.out.println("Reservation Information: " + resInfo);
		
	    return "reservation/res_seat_grade_arr";
	}

	@RequestMapping(value = "/passengersinfo")
	public String resPassengersInfo2(@RequestParam String resArrSeatGrade, Model model) {
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.put("resArrSeatGrade", resArrSeatGrade);
		model.addAttribute("resInfo", resInfo);
		
		System.out.println("Reservation Information: " + resInfo);
		
		return "reservation/res_passengers_info";
	}
	
	@RequestMapping(value = "/seat1")
	public String getResPassengersInfo1(@RequestParam(value = "resPassenger", required = true) List<String> values
			, Model model, @RequestParam(value = "resPassengerBirth", required = true) List<String> birth
			, @RequestParam Map<String, Object> addResMember) {
		model.addAttribute("seatList",seatService.getSeatList());
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		model.addAttribute("reservedSeatList",seatService.getReservedSeatList((String)resInfo.get("scheduleId1")));
		
		
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
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		if(seatService.getReservedSeatList((String)resInfo.get("scheduleId2"))==null) {
			model.addAttribute("reservedSeatList2",seatService.getSeatList());
		} else {
			model.addAttribute("reservedSeatList2",seatService.getReservedSeatList((String)resInfo.get("scheduleId2")));
		}
		
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
		//model.addAttribute("reservedSeatList",seatService.getReservedSeatList());
		
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.putAll(addPassengerSeat2);
		
		resInfo.put("selSeat2", values3);
		model.addAttribute("resInfo", resInfo);
		
		
		System.out.println("Reservation Information: " + resInfo);
		//return "redirect:/reservation/seat";
		return "reservation/res_ticket_confirm";
	}
	
	
}