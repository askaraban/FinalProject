package swift.air.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.AllArgsConstructor;
import swift.air.dto.Search;
import swift.air.mapper.SearchMapper;

@AllArgsConstructor
@Repository
public class SearchDAOImpl implements SearchDAO{
	private final SqlSession session;
	

	@Override
	public List<Search> selectSearchList1(int memberId) {
		
		return session.getMapper(SearchMapper.class).selectSearchList1(memberId);
	}

}
