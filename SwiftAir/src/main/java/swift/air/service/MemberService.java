package swift.air.service;

import javax.servlet.http.HttpSession;

import swift.air.dto.Member;

public interface MemberService {
	void addMember(Member member);
	void modifyMember(Member member);
	void removeMember(Member member, HttpSession session);
	Member loginAuth(Member member);
	int selectMemberId(String memberId);
	void findId(String memberKorName, String memberEmail);
	void findPasswd(Member member);
	Member selectMemberStatus(Member member);

}
