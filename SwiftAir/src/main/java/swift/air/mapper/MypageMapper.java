package swift.air.mapper;

import java.util.Map;

public interface MypageMapper {
	Map<String, Object> selectFutureJourney(int paymentMemberNum);
	Map<String, Object> selectPastJourney(int paymentMemberNum);
	int selectMemberPoint(int memberNum);
}
