package swift.air.service;

import java.util.List;

import swift.air.dto.Search;
import swift.air.dto.SearchFlight;

public interface SearchService {
	List<Search> getSearchList1(int memberId);
	List<Search> getSearchListAfter(int memberId);
	List<SearchFlight> getSearchListFlight(String startDate, String endDate, String departure, String destination);
}
