package swift.air.service;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import swift.air.dao.MemberDAO;
import swift.air.dto.Member;
import swift.air.util.PasswdHash;
import swift.air.util.RandomPasswd;



@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService {
	private final MemberDAO memberDAO;
	
	@Autowired
	public JavaMailSender javaMailSender;
	
	@Override
	public void addMember(Member member) {
		memberDAO.insertMember(member);
		
	}
	
	@Override
	public void modifyMember(Member member) {
		if(member.getMemberPswd() != null && !member.getMemberPswd().equals("")) {
			String hashedPassword = PasswdHash.encrypt(member.getMemberPswd());
			member.setMemberPswd(hashedPassword);
		}
		
		memberDAO.updateMember(member);
		
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
	public void findId(String memberKorName, String memberEmail) {
		String memberId = memberDAO.findId(memberKorName, memberEmail);
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
		SimpleMailMessage message = new SimpleMailMessage();
		message.setTo(member.getMemberEmail());
		message.setSubject(member.getMemberId()+"님의 새 비밀번호가 발급되었습니다.");
		message.setText(member.getMemberId()+"님의 새 비밀번호는 " + newPasswd + "입니다");
		javaMailSender.send(message);
		String hashedPassword = PasswdHash.encrypt(newPasswd);
		member.setMemberPswd(hashedPassword);
		memberDAO.findPasswd(member);
		
	}

	@Override
	public void removeMember(Member member, HttpSession session) {
		Member loginMember = (Member)session.getAttribute("loginMember");
		member.setMemberNum(loginMember.getMemberNum());
		memberDAO.updateMemberStatus(member);
		
	}

	@Override
	public Member selectMemberStatus(Member member) {
		Member memberStatus = memberDAO.selectMemberStatus(member);
		return memberStatus;
	}



}