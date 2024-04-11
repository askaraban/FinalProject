package swift.air.mapper;

import org.apache.ibatis.annotations.Param;

import swift.air.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	Member selectMember(String memberId);
	int selectMemberId(String memberId);
	String findEmail(@Param ("memberKorName") String memberKorName, @Param ("memberEmail") String memberEmail);
	int findPasswd(Member member);

}
