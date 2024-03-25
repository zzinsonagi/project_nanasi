package com.nanasi.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nanasi.domain.ProdVO;
import com.nanasi.domain.QaVO;
import com.nanasi.mapper.QnAMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QnAService {
	
	private final QnAMapper qnamap;
	
	/* 사전에 문의 type : 0 */
	//유저랑 상품명 출력
	public ProdVO productName(String prod_no) {
		return qnamap.productName(prod_no);
	}
	
	//질문 등록
	public void beforeQuestionRegister(QaVO vo) {
		qnamap.beforeQuestionRegister(vo);
	};
	
	//상품별 질문 출력
	public List<QaVO> productQuestion(String prod_no) {
		return qnamap.productQuestion(prod_no);
	}

	
	/* 고장낸 후에 문의 type : 1 */
	//질문 등록
	public void afterQuestionRegister(QaVO vo) {
		qnamap.afterQuestionRegister(vo);
	};

}
