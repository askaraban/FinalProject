package swift.air.dao;


import swift.air.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int updateMember(Member member);
	int updateMemberStatus(Member member);
	Member selectMember(String memberid);
	int selectMemberId(String memberId);
	String findId(String memberKorName, String memberEmail);
	int findPasswd(Member member);
	Member selectMemberStatus(Member member);

}
