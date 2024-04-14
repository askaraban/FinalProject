package swift.air.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import swift.air.dao.SearchDAO;
import swift.air.dto.Search;
import swift.air.dto.SearchFlight;

@Service
@AllArgsConstructor
public class SearchServiceImpl implements SearchService{
	private final SearchDAO searchDAO;

	@Override
	public List<Search> getSearchList1(int memberId) {
		
		return searchDAO.selectSearchList1(memberId);
	}

	@Override
	public List<Search> getSearchListAfter(int memberId) {
		
		return searchDAO.selectSearchListAfter(memberId);
	}

	@Override
	public List<SearchFlight> getSearchListFlight(String startDate, String endDate, String departure, String destination) {

		return searchDAO.selectSearchFlightList(startDate, endDate, departure, destination);
	}
}
