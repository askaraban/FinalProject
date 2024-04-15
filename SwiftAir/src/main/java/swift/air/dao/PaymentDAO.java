package swift.air.dao;

import swift.air.dto.Passenger;
import swift.air.dto.Payment;

public interface PaymentDAO {
	int insertPayment(Payment payment);
	int insertPassenger(Passenger passenger);
	int updatePayment(int paymentId);
	int deletePassenger(int paymentId);
}
