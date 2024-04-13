package swift.air.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.AllArgsConstructor;
import swift.air.dto.Search;
import swift.air.dto.SearchFlight;
import swift.air.mapper.SearchMapper;

@AllArgsConstructor
@Repository
public class SearchDAOImpl implements SearchDAO{
	private final SqlSession session;
	

	@Override
	public List<Search> selectSearchList1(int memberId) {
		
		return session.getMapper(SearchMapper.class).selectSearchList1(memberId);
	}


	@Override
	public List<Search> selectSearchListAfter(int memberId) {
		
		return session.getMapper(SearchMapper.class).selectSearchListAfter(memberId);
	}


	@Override
	public List<SearchFlight> selectSearchFlightList(String startDate, String endDate, String departure, String destination) {
		
		return session.getMapper(SearchMapper.class).selectSearchFlightList(startDate, endDate, departure, destination);
	}

}
