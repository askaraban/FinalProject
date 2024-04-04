package swift.air.service;

import java.util.Map;

public interface MypageService {
	Map<String, Object> getFutureJourney(int paymentMemberNum);
	Map<String, Object> getPastJourney(int paymentMemberNum);
	int getMemberPoint(int memberNum);
	
}
