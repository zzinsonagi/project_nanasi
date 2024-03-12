package com.nanasi.common;

import lombok.Data;

@Data //getter, setter
public class Criteria {
	
	private int pageNum; //페이지번호
	private int amount; //한 페이지에 출력되는 레코드 수
	private String type; //검색 타입
	private String keyword; //검색 단어
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} : type.split(""); //삼항 연산자
												//값이 없으면(즉, T, C, W가 넘어오면) 분할해서 배열타입으로 리턴
	}
	
}
