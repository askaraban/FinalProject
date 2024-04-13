package swift.air.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
import swift.air.dao.SearchDAO;
import swift.air.dto.Search;

@Service
@AllArgsConstructor
public class SearchServiceImpl implements SearchService{
	private final SearchDAO searchDAO;

	@Override
	public List<Search> getSearchList1(int memberId) {
		
		return searchDAO.selectSearchList1(memberId);
	}
}
