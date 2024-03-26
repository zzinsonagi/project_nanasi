package com.nanasi.domain;

import java.util.Date;

import lombok.Data;
	
import java.util.List;


@Data
public class RevVO {
	
	//구독&예약 번호
	private String sub_num;
	//리뷰 신고
	private int rev_report;
	//등록 시간
	private Date rev_add;
	//리뷰 내용
	private String rev_content;
	//평점
	private int rev_sco;
	
	//첨부파일
	private List<AttachVO> rev_attList;
	
	private String user_id;	
	private String prod_no; //혹시 모르니까
	private String prod_name;
	private String prod_add; //구독 시작일 
	private String sub_date; //구독 기간
	private String prod_color;
}
