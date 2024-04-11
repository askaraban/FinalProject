package swift.air.service;

import javax.validation.constraints.NotNull;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.MemberDAO;
import swift.air.dto.Member;
import swift.air.mapper.MemberMapper;


@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	private final MemberDAO memberDAO;
	
	
	@Override
	public void addMember(Member member) {
		String hashedPassword = BCrypt.hashpw(member.getMemberPswd(),BCrypt.gensalt());
		member.setMemberPswd(hashedPassword);
		memberDAO.insertMember(member);
		
	}


	@Override
	public Member loginAuth(Member member) {
		Member authMember = memberDAO.selectMember(member.getMemberId());
		return authMember;
	}

    
	
	@Override
	public int selectMemberId(String MemberId) {
		return memberDAO.selectMemberId(MemberId);
	}

	
}
