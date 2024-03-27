package com.nanasi.mapper;

import java.util.List;

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
	
	//상품별 질문 출력
	public List<QaVO> productQuestion(String prod_no);
	
	//상품별 질문 출력 갯수
	public int productQuestionCount(String prod_no);

	//질문 디테일
	public QaVO befQuestionDetail(int qa_num);
	
	//답변 등록 페이지 접속
	public QaVO befAnswerEnter();
	

	/* 고장낸 후에 문의 : type 1 */
	//질문 등록
	public void afterQuestionRegister(QaVO vo);
	
	//질문 리스트 출력
	public List<QaVO> adminQnaList();
	
	//질문 개별 출력
	public QaVO afterQuestionOne(int qa_num);
	
	
	/* 사전, 사후 둘 다 가능 */
	//답변 등록
	public void answerRegister(int qa_num, String an_content);
	
	//답변 상태 바꾸기
	public void stateUpdate(int qa_num);

}
