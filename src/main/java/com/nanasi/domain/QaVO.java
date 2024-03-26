package com.nanasi.domain;

import java.util.Date;

import lombok.Data;

@Data
public class QaVO {
	
	//문의 번호
	private int qa_num;
	//아이디
	private String user_id;
	//질문 내용
	private String qa_content;
	//등록일자
	private Date qa_add;

	
	//답변 추가
	private AnVO qa_answer;

}
