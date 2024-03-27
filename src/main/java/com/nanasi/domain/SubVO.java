package com.nanasi.domain;

import java.util.Date;

import lombok.Data;

import java.util.List;


@Data
public class SubVO {
	
	//구독&예약 번호
	private String sub_num;
	//아이디
	private String user_id;
	//상품번호
	private String prod_no;
	//구독&예약 기간
	private int sub_date;
	//등록일자
	private Date sub_add;
	//예약여부확인
	private int sub_res;
	//파손여부
	private String sub_dmg;
	//진행상태
	private String sub_state;
	//배송지
	private String sub_address;
	
	
	//첨부파일
	private List<AttachVO> prod_attList;
	//구독료
	private int prod_subprice;
	//구독 완료 날짜
	private Date prod_endmonth;
	
}
