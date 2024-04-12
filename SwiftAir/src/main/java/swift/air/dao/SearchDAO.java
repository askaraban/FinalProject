package swift.air.dao;

import java.util.List;

import swift.air.dto.Search;

public interface SearchDAO {
	List<Search> selectSearchList1(int memberId);
}
