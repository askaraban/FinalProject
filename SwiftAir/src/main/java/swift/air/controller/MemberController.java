package swift.air.controller;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		return "index";   
		  
}		
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login";	
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
		return "index";
	}
	
	@RequestMapping(value = "/searchPasswd") 
	public String searchPasswd() {
		return "/member/search_passwd";
	}
	
	@RequestMapping(value = "/searchPasswdAction") 
	public String searchPasswdAction(@ModelAttribute Member member) {
		memberService.findPasswd(member);
		return "index";
	}
	
	@RequestMapping(value = "/modifyMember")
		public String modifyMember() {
		return "/member/modify_member";
	}
	
	@RequestMapping(value = "/modifyMemberAction")
	public String modifyMember(@ModelAttribute Member member, HttpSession session) {
		memberService.modifyMember(member);		
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(value = "/removeMember")
	public String removeMember(@ModelAttribute Member member, HttpSession session) {
	    memberService.removeMember(member, session);
	    session.invalidate();
	    return "index";
	}
	
	
	
}
	
	
	
