package com.nanasi.domain;

import java.util.Date;
<<<<<<< HEAD

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

=======
import java.util.List;

import lombok.Data;

@Data
public class QaVO {
	
	//문의 번호
	private int qa_num;
	//아이디
	private String user_id;
	//질문 내용
	private String qa_content;
	//등록 일자
	private Date qa_add;
	//상품 번호
	private String prod_no;
	//질문 제목
	private String qa_title;
	//답변 상태 여부			0:미완료, 1:완료
	private int qa_state;
	
	//답변 추가
	private AnVO qa_answer;
	//고장접수 첨부파일
	private List<AttachVO> attachList;
>>>>>>> branch 'feature' of https://github.com/zzinsonagi/project_nanasi.git
}
