package com.nanasi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanasi.domain.ProdVO;
import com.nanasi.domain.QaVO;
import com.nanasi.service.QnAService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/qna")
@RequiredArgsConstructor
public class QnAController {
	
	private final QnAService qnasv;
	
	/* 사전 문의 */
	//질문 등록 페이지 접속
	@GetMapping("/befRegisterEnter")
	public String befRegisterEnter(String prod_no, String user_id, Model model) {
					//로그인하면 user_id를 매개변수로 하나 더 받아줘야할지도 모른다
		ProdVO vo = qnasv.productName(prod_no);
		vo.setUser_id(user_id);
		model.addAttribute("vo", vo);
		return "/qna/register_Sample";
	}
	
	//질문 등록
	@PostMapping("/befRegister")
	public String befRegister(QaVO vo) {
		qnasv.beforeQuestionRegister(vo);
		return "redirect:/qna/befQnAList_Sample";
	}
	
	//상품별 질문 모음
	

	
	/* 고장낸 후 문의 */
	//질문 등록 페이지 접속
	@PostMapping("/aftRegisterEnter")
	public String aftRegisterEnter(String prod_no, String user_id, Model model) {
		ProdVO vo = qnasv.productName(prod_no);
		vo.setUser_id(user_id);
		model.addAttribute("vo", vo);
		return "/qna/register_Sample";
	}
	
	//질문 등록
	@PostMapping("/aftRegister")
	public String aftRegister(QaVO vo) {
		//첨부파일 등록
		qnasv.afterQuestionRegister(vo);
		return "redirect:/qna/aftQnAList";//가 아니라 마이 페이지로 수정해야 함
										//관리자는 고장 질문 목록들로 리다이렉트
	}
	
	//관리자가 볼 질문 모음
	
	
}
