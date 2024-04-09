package swift.air.mapper;

import swift.air.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	Member selectMember(String memberId);
	int selectMemberId(String memberId);

}
