package swift.air.controller;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Member;
import swift.air.service.MemberService;
import swift.air.util.PasswdHash;


@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {
	private final MemberService memberService;
	
	@RequestMapping(value = "/join")
	public String join() {
		return "member/join";
		
	}
	
	@RequestMapping(value = "/joinAction")
	public String join(@ModelAttribute Member member, Model model) {
		String hashedPassword = PasswdHash.encrypt(member.getMemberPswd());
		member.setMemberPswd(hashedPassword);
		member.setMemberStatus(0);
		memberService.addMember(member);
		
		return "redirect:/member/login";
		
	}
	
	
	@RequestMapping(value = "/login")
	public String login() {
		return "member/login";	
		
	}
	
	@RequestMapping(value = "/loginAction")
	public String login(@ModelAttribute Member member, HttpSession session, @RequestParam("memberPswd") String memberPswd) {
		Member authMember = memberService.loginAuth(member);
		Member memberStatus = memberService.selectMemberStatus(member);
		String hashedPassword = PasswdHash.encrypt(memberPswd);
		if(!authMember.getMemberPswd().equals(hashedPassword) || memberStatus.getMemberStatus() == 1) {
			session.invalidate();
			return "redirect:/member/login";	
		} 
		session.setAttribute("loginMember", authMember); 
		return "redirect:/";  
		  
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/confirmId")
	@ResponseBody
	public ResponseEntity<Boolean> confirmId(String memberId) {
		
		boolean result = true;
		
		if(memberId.trim().isEmpty()) {
			result = false;
		} else {
			int cnt = memberService.selectMemberId(memberId);
			if (cnt == 0) {
				result = true;
			} else {
				result = false;
			}
		}
		
		return new ResponseEntity<>(result, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/searchId") 
		public String searchId() {
			return "/member/search_id";
		}
	
	@RequestMapping(value = "/searchIdAction") 
	public String searchIdAction(@RequestParam("memberKorName") String memberKorName, 
			@RequestParam("memberEmail") String memberEmail) {
		memberService.findId(memberKorName, memberEmail);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/searchPasswd") 
	public String searchPasswd() {
		return "/member/search_passwd";
	}
	
	@RequestMapping(value = "/searchPasswdAction") 
	public String searchPasswdAction(@ModelAttribute Member member) {
		memberService.findPasswd(member);
		return "redirect:/";
	}
	
	@RequestMapping(value = "/modifyMember")
		public String modifyMember() {
		return "/member/modify_member";
	}
	
	@RequestMapping(value = "/modifyMemberAction")
	public String modifyMember(@ModelAttribute Member member, HttpSession session) {
		memberService.modifyMember(member);		
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value = "/removeMember")
	public String removeMember(@ModelAttribute Member member, HttpSession session) {
	    memberService.removeMember(member, session);
	    session.invalidate();
	    return "redirect:/";
	}
	
	@RequestMapping(value = "/naverLogin")
	public String naverLogin() {
		return "member/naverLogin";	
		
	}	
	
	@RequestMapping(value = "/naverLoginAction")
	public String naverLoginAction(String age,
								   String birthDay,
								   String birthYear,
								   String email,
								   String gender,
								   String mobile,
								   String name,
								   String nickName,
								   String id,
								   HttpSession session
								   ) {
		
		
		Member member = new Member();
		member.setMemberId(email);
		member.setMemberBirth(birthYear + "-" +birthDay);
		member.setMemberEmail(email);
		
		if(gender.equals("M")) {
			member.setMemberGender(1);	
		}else {
			member.setMemberGender(2);
		}
		
		member.setMemberPhone(mobile);
		member.setMemberKorName(name);
		
		
		Member authMember = memberService.loginAuth(member);
		if(authMember == null) {
			member.setMemberStatus(5); 
			memberService.addMember(member);	
		}

		session.setAttribute("loginMember", authMember);
		
		return "redirect:/";
		  
	}	
	

}
	
	
	
