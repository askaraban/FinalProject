package swift.air.dao;

import swift.air.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	Member selectMember(String memberid);

}
