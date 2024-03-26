package com.nanasi.domain;

import java.util.Date;

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
	//중고가(아마 원가인듯)
	private int prod_price;
	//구독료
	private int prod_subprice;
	//상품 카테고리
	private String prod_cate;
	//상품 추가한 날짜
	private Date prod_add;
	//상품 평점 평균
	private int prod_sco;
	
	
	
}
