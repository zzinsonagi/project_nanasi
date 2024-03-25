package com.nanasi.domain;

import java.util.Date;

import lombok.Data;

@Data
public class RevVO {
	
	//구독&예약 번호
	private String sub_num;
	//등록 시간
	private Date rev_add;
	//리뷰 내용
	private String rev_content;
	//평점
	private int rev_sco;
	//amugona
	private String nanasi;
	
}
