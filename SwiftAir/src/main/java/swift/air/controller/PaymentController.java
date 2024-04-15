package swift.air.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Passenger;
import swift.air.dto.Payment;
import swift.air.service.PaymentService;
import swift.air.service.SeatService;

@Controller
@SessionAttributes("resInfo")
@RequestMapping("/pay")
@RequiredArgsConstructor
public class PaymentController {
	private final SeatService seatService;
	private final PaymentService paymentService;
	
	//결제페이지 요청
	@RequestMapping(value="/payment")
	public String pay(@RequestParam(value = "selSeat2", required = true) List<String> values3
			, Model model, @RequestParam Map<String, Object> addPassengerSeat2) {
		
		model.addAttribute("seatList",seatService.getSeatList());
		
		@SuppressWarnings("unchecked")
		Map<String, Object> resInfo = (Map<String, Object>) model.getAttribute("resInfo");
		
		resInfo.putAll(addPassengerSeat2);
		
		resInfo.put("selSeat2", values3);
		model.addAttribute("resInfo", resInfo);
		
		
		System.out.println("Reservation Information: " + resInfo);
		
		return "payment/res_ticket_confirm";	
	}
	
	//결제 API 요청
	@PostMapping(value="/payment/api")
	@ResponseBody
	public String pay(@RequestBody Payment payment, HttpSession session) {
		//결제 관련 OpenAPI를 이용하기 전에 결제 금액 검증을 위해 세션에 주문번호(이름)와 결제금액(값)을 저장
		session.setAttribute(payment.getMerchantUid(), payment.getPaymentTotal());
		return "ok";	
	}
	
	
	// 결제 처리 후 결제 금액을 검증하여 응답하는 요청 처리 메소드
	@RequestMapping(value = "/complete", method = RequestMethod.POST)
	@ResponseBody
	public String complete(@RequestBody Payment payment, Passenger passenger, HttpSession session) {
		// 접근 토큰을 발급받아 저장
		String accessToken = paymentService.getAccessToken(payment);

		// 토큰과 결제고유값을 전달하여 OpenAPI를 이용하여 결제정보를 반환받아 저장
		Payment returnPayment = paymentService.getPayment(accessToken, payment.getImpUid());
		returnPayment.setPaymentMemberNum(payment.getPaymentMemberNum());
		
		// 세션에 저장된 결제 금액을 반환받아 저장
		Long beforeAmount = (Long) session.getAttribute(payment.getMerchantUid());
		session.removeAttribute(payment.getMerchantUid());

		// 결제된 결제금액을 반환받아 저장
		Long amount=returnPayment.getPaymentTotal();

		if (beforeAmount.equals(amount)) {// 검증 성공
			paymentService.addPayment(returnPayment, passenger);// 테이블에 결제정보 삽입 처리
			return "success";
		} else {// 검증 실패(결제 금액 불일치) - 위변조된 결제
			paymentService.canclePayment(accessToken, returnPayment);
			return "forgery";
		}
	}
	
	@PostMapping("/cancel")
	public String cancel() {
		return "mypage/mypage_point";
	}
}