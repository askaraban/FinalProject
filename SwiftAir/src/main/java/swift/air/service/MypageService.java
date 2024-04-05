package swift.air.service;

import java.util.Map;

public interface MypageService {
	Map<String, Object> getFutureJourney(int paymentMemberNum, int pageNum);
	Map<String, Object> getPastJourney(int paymentMemberNum, int pageNum);
	int getMemberPoint(int memberNum);
	
}
