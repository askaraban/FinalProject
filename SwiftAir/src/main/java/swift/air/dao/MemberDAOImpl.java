package swift.air.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Member;
import swift.air.mapper.MemberMapper;

@Repository
@RequiredArgsConstructor
public class MemberDAOImpl implements MemberDAO {
   private final SqlSession sqlSession;
	
	
	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}

	@Override
	public Member selectMember(String memberid) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(memberid);
	}

	@Override
	public int selectMemberId(String memberId) {
		return sqlSession.getMapper(MemberMapper.class).selectMemberId(memberId);
	}

}
