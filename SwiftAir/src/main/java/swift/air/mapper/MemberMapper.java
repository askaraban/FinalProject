package swift.air.mapper;


import org.apache.ibatis.annotations.Param;

import swift.air.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int updateMember(Member member);
	int updateMemberStatus(Member member);
	Member selectMember(String memberId);
	int selectMemberId(String memberId);
	String findId(@Param ("memberKorName") String memberKorName, @Param ("memberEmail") String memberEmail);
	int findPasswd(Member member);
	Member selectMemberStatus(Member member);

}
