package swift.air.service;

import swift.air.dto.Passenger;
import swift.air.dto.Payment;

public interface PaymentService {
	void addPayment(Payment payment, Passenger passenger);
	String getAccessToken(Payment payment);
	Payment getPayment(String accessToken, String impUid);
	String canclePayment(String accessToken, Payment payment);
	
	
}
