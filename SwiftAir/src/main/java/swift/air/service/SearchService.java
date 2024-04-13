package swift.air.service;

import java.util.List;

import swift.air.dto.Search;

public interface SearchService {
	List<Search> getSearchList1(int memberId);
}
