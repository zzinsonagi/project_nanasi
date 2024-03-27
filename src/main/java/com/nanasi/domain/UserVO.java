package com.nanasi.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserVO {
	
	//아이디
	private String user_id;
	//이름
	private String user_name;
	//비밀번호
	private String user_pw;
	//주소
	private String user_address;
	private String user_address1;
	private String user_address2;
	private String user_address3;
	//전화번호
	private String user_phone;
	private String user_phone1;
	private String user_phone2;
	private String user_phone3;
	//주민번호
	private String user_jumin;
	private String user_jumin1;
	private String user_jumin2;
	//사용자등급
	private int user_grade;
	//이메일
	private String user_email;
	private String user_email1;
	private String user_email2;
	//가입일
	private Date user_add;
	
}
