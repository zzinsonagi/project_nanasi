package com.nanasi.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.domain.UserVO;

@Mapper
public interface Member {
	
	int countMemberByLoginId(String user_id);

	void SignUp(UserVO vo);
	
	UserVO findByLoginId(String user_id);
	
	UserVO read(String user_id);
}
