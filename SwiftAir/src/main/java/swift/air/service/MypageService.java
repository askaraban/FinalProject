package swift.air.service;

import java.util.List;
import java.util.Map;

import swift.air.dto.Payment;
import swift.air.dto.Point;

public interface MypageService {
	Map<String, Object> getFutureJourney(int paymentMemberNum, int pageNum);
	Map<String, Object> getPastJourney(int paymentMemberNum, int pageNum);
	int getMemberPoint(int memberNum);
	List<Point> getPointDetail(Map<String, Object> map);
	List<Payment> getPaymentList(int paymentMemberNum);
}
