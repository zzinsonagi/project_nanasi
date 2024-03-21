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
		vo.setUser_jumin(jumin);
		vo.setUser_address(address);
		vo.setUser_pw(passwordEncoder.encode(vo.getUser_pw()));
		member.SignUp(vo);
		return vo;
	}
}
