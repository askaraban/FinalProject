package swift.air.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.MemberDAO;
import swift.air.dto.Member;
import swift.air.util.RandomPasswd;



@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	private final MemberDAO memberDAO;
	
	@Autowired
	public JavaMailSender javaMailSender;
	
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

	@Override
	public void findEmail(String memberKorName, String memberEmail) {
		String memberId = memberDAO.findEmail(memberKorName, memberEmail);
		if(memberId != null) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(memberEmail);
		message.setSubject(memberKorName+"님의 아이디 찾기 결과입니다");
		message.setText(memberKorName+"님의 아이디는 " + memberId + "입니다");
		javaMailSender.send(message);

		}
		
	}

	@Override
	public void findPasswd(Member member) {
		String newPasswd = RandomPasswd.randomPasswd(10);
		member.setMemberPswd(newPasswd);
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(member.getMemberEmail());
		message.setSubject(member.getMemberId()+"님의 새 비밀번호가 발급되었습니다.");
		message.setText(member.getMemberId()+"님의 새 비밀번호는 " + member.getMemberPswd() + "입니다");
		javaMailSender.send(message);
		String hashedPassword = BCrypt.hashpw(member.getMemberPswd(),BCrypt.gensalt());
		member.setMemberPswd(hashedPassword);
		memberDAO.findPasswd(member);
		
}

	

	

}