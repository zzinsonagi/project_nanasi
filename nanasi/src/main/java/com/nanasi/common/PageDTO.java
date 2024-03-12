package com.nanasi.common;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total; //총 레코드 개수
	private Criteria cri; //객체주입해서 pageNum, amount, type, keyword 멤버변수 사용 가능
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10; //20
		this.startPage = this.endPage - 9;
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount())); //13
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1; //this.startPage 조건이 만족하면 true
		this.next = this.endPage < realEnd; //this.endPage < realEnd 조건이 만족하면 true
	}
}
