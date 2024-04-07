package swift.air.service;

import swift.air.dto.Member;

public interface MemberService {
	void addMember(Member member);
	Member loginAuth(Member member);

}
