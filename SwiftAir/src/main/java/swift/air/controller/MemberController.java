package swift.air.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import swift.air.dto.Member;
import swift.air.service.MemberService;


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
	public String login(@ModelAttribute Member member, HttpSession session) {
		Member authMember = memberService.loginAuth(member);
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
	
	
	
	
}
