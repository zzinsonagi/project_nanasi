package com.nanasi.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AnVO {
	
	//아이디
	private String user_id;
	//답변 내용
	private String an_content;
	//등록일자
	private Date an_add;
	//문의 번호
	private int qa_num;
	
}
