package swift.air.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.mapper.MypageMapper;

@Repository
@RequiredArgsConstructor
public class MypageDAOImpl implements MypageDAO {
	private final SqlSession sqlSession;

	@Override
	public Map<String, Object> selectFutureJourney(Map<String, Object> map) {
		return sqlSession.getMapper(MypageMapper.class).selectFutureJourney(map);
	}

	@Override
	public Map<String, Object> selectPastJourney(Map<String, Object> map) {
		return sqlSession.getMapper(MypageMapper.class).selectPastJourney(map);
	}

	@Override
	public int selectMemberPoint(int memberNum) {
		return sqlSession.getMapper(MypageMapper.class).selectMemberPoint(memberNum);
	}

	@Override
	public int selectFutureJourneyCount(int paymentMemberNum) {
		return sqlSession.getMapper(MypageMapper.class).selectFutureJourneyCount(paymentMemberNum);
	}

	@Override
	public int selectPastJourneyCount(int paymentMemberNum) {
		return sqlSession.getMapper(MypageMapper.class).selectPastJourneyCount(paymentMemberNum);
	}

}
