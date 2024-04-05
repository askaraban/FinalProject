package swift.air.mapper;

import java.util.Map;

public interface MypageMapper {
	Map<String, Object> selectFutureJourney(Map<String, Object> map);
	int selectFutureJourneyCount(int paymentMemberNum);
	Map<String, Object> selectPastJourney(Map<String, Object> map);
	int selectPastJourneyCount(int paymentMemberNum);
	int selectMemberPoint(int memberNum);
}
