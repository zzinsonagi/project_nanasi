package com.nanasi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nanasi.common.MailSenderRunner;
import com.nanasi.domain.UserVO;
import com.nanasi.service.MemberService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequiredArgsConstructor
@Log4j2
public class UserController {
	
	private final MailSenderRunner mailsend;
	private final MemberService memberService;
	
	String checkIncode = "";
	
	//로그인 페이지
	@GetMapping("/login")
	public String login() {
		return "/user/Login";
	}

	//회원등록
	@GetMapping("/member")
	public String member(String incodeCheck, Model model) {
		if(checkIncode.equals(incodeCheck)) {
			model.addAttribute("check", "checkok");
			checkIncode = "";
			return "redirect:/";
		}else {
			checkIncode = "";
			return "/user/Member";
		}
	}
	
	@PostMapping("/member")
	public String signupMember(UserVO vo, Model model) {
		memberService.signUp(vo);
		return "redirect:/member";
	}
	//중복 회원 확인
	//0 : 중복 無,		1 : 중복 有
	@GetMapping("/member-count")
	@ResponseBody
	public int countMemberByLoginId(@RequestParam String user_id) {
		return memberService.countMemberByLoginId(user_id);
	}

	//약관 페이지 접속
	@GetMapping("/memberTerms")
	public String memberTerms(Model model) {
		char ran = (char)((Math.random()*26)+65);
		model.addAttribute("alpa", ran);
		return "/user/MemberTerms";
	}
	
	//인증 메일
	@GetMapping("/mail.do")
	@ResponseBody // 보내는 타입을 지정해주는 것
	public String mailSend(String mail) {
		checkIncode = mailsend.sendMail(mail);
		return checkIncode;
	}
	
	@PostMapping("/signup")
	public String member2(String incodeCheck, Model model) {
		log.info(incodeCheck);
		if(checkIncode.equals(incodeCheck)) {
			model.addAttribute("check", "checkok");
			checkIncode = "";
			return "redirect:/";
		}else {
			checkIncode = "";
			log.info(incodeCheck);
			return "/user/Member";
		}
	}
	
	@GetMapping("/memberChk")
	public String memberCheck(String user_id, Model model) {
		UserVO vo = memberService.check(user_id);
		model.addAttribute("board",vo);
		return "/user/Member_check";
	}
	
	
}
