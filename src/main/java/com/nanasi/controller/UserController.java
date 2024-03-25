package com.nanasi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletResponse;
//import com.nanasi.common.MailSenderRunner;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/port")
@RequiredArgsConstructor
public class UserController {
	
	//private final MailSenderRunner mailsend;
	
	//로그인 페이지

	//회원등록

	//중복 회원 확인
	//0 : 중복 無,		1 : 중복 有

	//약관 페이지 접속
	
	//인증 메일
	
	

	
	@GetMapping("/console")
	public String index() {
		return "/detail/detailQna";
	}
	
	
	
}
