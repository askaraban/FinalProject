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
	public Map<String, Object> selectFutureJourney(int paymentMemberNum) {
		return sqlSession.getMapper(MypageMapper.class).selectFutureJourney(paymentMemberNum);
	}

	@Override
	public Map<String, Object> selectPastJourney(int paymentMemberNum) {
		return sqlSession.getMapper(MypageMapper.class).selectPastJourney(paymentMemberNum);
	}

	@Override
	public int selectMemberPoint(int memberNum) {
		return sqlSession.getMapper(MypageMapper.class).selectMemberPoint(memberNum);
	}

}
