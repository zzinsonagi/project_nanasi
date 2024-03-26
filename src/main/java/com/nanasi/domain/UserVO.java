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
<<<<<<< HEAD
	//전화번호
	private String user_phone;
	//주민번호
	private String user_jumin;
=======
	private String user_address1;
	private String user_address2;
	private String user_address3;
	//전화번호
	private String user_phone;
	//주민번호
	private String user_jumin;
	private String user_jumin1;
	private String user_jumin2;
>>>>>>> branch 'feature' of https://github.com/zzinsonagi/project_nanasi.git
	//사용자등급
	private int user_grade;
	//이메일
	private String user_email;
	//가입일
	private Date user_add;
	
}
