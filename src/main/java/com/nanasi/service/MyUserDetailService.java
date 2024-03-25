package com.nanasi.service;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nanasi.domain.UserVO;
import com.nanasi.mapper.Member;

import lombok.Builder;
import lombok.RequiredArgsConstructor;

@Service
@Transactional
@RequiredArgsConstructor
@Builder
public class MyUserDetailService implements UserDetailsService {

	private final Member memberMapper = null;
	
	@Override
	// userDetails는 회원정보를 담기 위한 인터페이스
		public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
			// 1. 회원 정보 및 비밀번호 조회
			UserVO member = memberMapper.findByLoginId(username);
			// String enecodedPassword = (member == null)? "" : member.getPassword(); 다 가져와서 필요없음
			if(member == null) {
				throw new UsernameNotFoundException(username);
			}
			return User.builder() // 이것을 구현한 클래스 user
					.username(member.getUser_id())
					.password(member.getUser_pw())
					.build();
		}

}
