package com.nanasi.domain;

import lombok.Data;

@Data
public class PTestVo {
	
	private String merchant_uid;	// 주문번호
	private String name;			// 상품명
	private String amount;			// 상품가격
	private String buyer_tel;		// 구매자 전화번호
	
}
