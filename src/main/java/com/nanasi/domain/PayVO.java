package com.nanasi.domain;

import lombok.Data;

@Data
public class PayVO {
	
	//결제수단
	private String pay_method;
	//아이디
	private String user_id;
	//구독&예약 번호
	private String sub_num;
	
}
