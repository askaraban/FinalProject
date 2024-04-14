package swift.air.service;

import swift.air.dto.Payment;

public interface PaymentService {
	void addPayment(Payment payment);	
	String getAccessToken(Payment payment);
	Payment getPayment(String accessToken, String impUid);
	String canclePayment(String accessToken, Payment payment);
}
