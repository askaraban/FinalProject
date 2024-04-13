package swift.air.mapper;

import java.util.List;

import swift.air.dto.Search;

public interface SearchMapper {
	List<Search> selectSearchList1(int memberId);
}
