package com.nanasi.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.domain.ProdVO;
import com.nanasi.domain.QaVO;

@Mapper
public interface QnAMapper {
	
	/* 사전에 문의 : type 0 */
	//유저랑 상품명 출력
	public ProdVO productName(String prod_no);
	
	//질문 등록
	public void beforeQuestionRegister(QaVO vo);
	
	//질문 수정
	
	//질문 삭제

	
	/* 고장낸 후에 문의 : type 1 */
	//질문 등록
	public void afterQuestionRegister(QaVO vo);

}
