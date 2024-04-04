package swift.air.dao;

import java.util.Map;

public interface MypageDAO {
	Map<String, Object> selectFutureJourney(int paymentMemberNum);
	Map<String, Object> selectPastJourney(int paymentMemberNum);
	int selectMemberPoint(int memberId);
}
