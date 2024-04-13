package swift.air.dao;

import java.util.List;

import swift.air.dto.Search;
import swift.air.dto.SearchFlight;

public interface SearchDAO {
	List<Search> selectSearchList1(int memberId);
	List<Search> selectSearchListAfter(int memberId);
	List<SearchFlight> selectSearchFlightList(String startDate, String endDate, String departure, String detination);
}
