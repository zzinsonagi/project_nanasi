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
	
	//상품별 질문 갯수
	public int productQuestionCount(String prod_no) {
		return qnamap.productQuestionCount(prod_no);
	}
	
	//질문 디테일
	public QaVO befQuestionDetail(int qa_num) {
		return qnamap.befQuestionDetail(qa_num);
	}

	
	/* 고장낸 후에 문의 type : 1 */
	//질문 등록
	public void afterQuestionRegister(QaVO vo) {
		qnamap.afterQuestionRegister(vo);
	};
	
	//질문 리스트 출력
	public List<QaVO> adminQnaList(){
		return qnamap.adminQnaList();
	}
	
	//질문 개별 출력
	public QaVO afterQuestionOne(int qa_num) {
		return qnamap.afterQuestionOne(qa_num);
	}
	
	
	/* 사전, 사후 둘 다 가능 */
	//답변 등록
	public void answerRegister(int qa_num, String an_content) {
		qnamap.answerRegister(qa_num, an_content);
	}
	
	//답변 상태 바꾸기
	public void stateUpdate(int qa_num) {
		qnamap.stateUpdate(qa_num);
	}

}
