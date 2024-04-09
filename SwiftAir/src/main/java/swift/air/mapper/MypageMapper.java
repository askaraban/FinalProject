package swift.air.mapper;

import java.util.List;
import java.util.Map;

import swift.air.dto.Point;

public interface MypageMapper {
	List<Map<String, Object>> selectFutureJourney(Map<String, Object> map);
	int selectFutureJourneyCount(int paymentMemberNum);
	Map<String, Object> selectPastJourney(Map<String, Object> map);
	int selectPastJourneyCount(int paymentMemberNum);
	int selectMemberPoint(int memberNum);
	List<Point> selectPointDetail(Map<String, Object> map);
}
