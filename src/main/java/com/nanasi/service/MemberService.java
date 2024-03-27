package com.nanasi.service;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.nanasi.domain.UserVO;
import com.nanasi.mapper.Member;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberService {

	private final Member member;
	private final PasswordEncoder passwordEncoder;
	
	public int countMemberByLoginId(@RequestParam final String user_id) {
		return member.countMemberByLoginId(user_id);
	}
	
	public UserVO signUp(UserVO vo) {
		String jumin = vo.getUser_jumin1()+vo.getUser_jumin2();
		String address = vo.getUser_address1()+vo.getUser_address2()+vo.getUser_address3();
		String phone = vo.getUser_phone1()+vo.getUser_phone2()+vo.getUser_phone3();
		String email = vo.getUser_email1()+"@"+vo.getUser_email2();
		vo.setUser_jumin(jumin);
		vo.setUser_address(address);
		vo.setUser_phone(phone);
		vo.setUser_email(email);
		vo.setUser_pw(passwordEncoder.encode(vo.getUser_pw()));
		member.SignUp(vo);
		return vo;
	}
	
	public UserVO check(String user_id) {
		UserVO vo = member.read(user_id);
		return vo;
	}
}
