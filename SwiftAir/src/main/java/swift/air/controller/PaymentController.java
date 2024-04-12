package swift.air.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Payment;
import swift.air.service.PaymentService;

@Controller
@RequestMapping("/pay")
@RequiredArgsConstructor
public class PaymentController {
	private final PaymentService paymentService;
	
	/*
	@RequestMapping(value="/card")
	public String payCard() {
		return "payment/payment_card";
	}
	
	@RequestMapping(value="/point")
	public String payPoint() {
		return "payment/payment_point";
	}
	*/
	
	@RequestMapping(value="/payment", method = RequestMethod.GET)
	public String pay() {
		return "payment/payment_card";	
	}
	
	@RequestMapping(value="/payment", method = RequestMethod.POST)
	@ResponseBody
	public String pay(@RequestBody Payment payment, HttpSession session) {
		//결제 관련 OpenAPI를 이용하기 전에 결제 금액 검증을 위해 세션에 주문번호(이름)와 결제금액(값)을 저장
		session.setAttribute(payment.getMerchantUid(), payment.getPaymentTotal());
		return "ok";	
	}
}
