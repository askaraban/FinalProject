package swift.air.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/payment")
public class PaymentController {
	@RequestMapping(value="/card")
	public String payCard() {
		return "payment/payment_card";
	}
	
	@RequestMapping(value="/point")
	public String payPoint() {
		return "payment/payment_point";
	}
}
