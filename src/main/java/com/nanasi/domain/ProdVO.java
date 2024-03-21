package com.nanasi.domain;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class ProdVO {
	
	//상품 번호
	private String prod_no;
	//상품 이름
	private String prod_name;
	//상품 색깔
	private String prod_color;
	//상품 브랜드
	private String prod_brand;
	//원가
	private int prod_price;
	//상품 카테고리
	private String prod_cate;
	//상품 추가한 날짜
	private Date prod_add;
	//상품 평점 평균
	private int prod_sco;
	
	
	//사진 첨부
	private List<AttachVO> prod_attList;
	//구독료
	private int prod_subprice;
	//구독 완료 날짜
	private Date prod_endmonth;
	//유저 아이디
	private String user_id;
	private int sub_date;
	private Date sub_add;
	private String sub_num;
	private int sub_res;
	private int sub_state;
	private String sub_address;
	


}
