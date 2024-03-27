package com.nanasi.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanasi.domain.ProdVO;
import com.nanasi.domain.QaVO;
import com.nanasi.domain.RevVO;
import com.nanasi.service.DetailService;
import com.nanasi.service.QnAService;
import com.nanasi.service.ReviewService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/detail")
@RequiredArgsConstructor
public class DetailController {
	
	private final DetailService desv;
	private final ReviewService rvsv;
	private final QnAService qnasv;
	
	//상품 디테일 페이지 접속
	@GetMapping("/detail")
	public String detailEnter(String prod_no, Model model) {
		//상품 내용
		ProdVO prodVo = desv.detailOne(prod_no);
		model.addAttribute("prodVo", prodVo);

		//리뷰 내용, 총 갯수
		List<RevVO> revList = rvsv.reviewAll(prod_no);
		int revTot = rvsv.reviewCount(prod_no);
		model.addAttribute("revList", revList);
		model.addAttribute("revTot", revTot);
		
		//QnA 내용, 총 갯수
		List<QaVO> qaList = qnasv.productQuestion(prod_no);
		int qaTot = qnasv.productQuestionCount(prod_no);
		model.addAttribute("qaList", qaList);
		model.addAttribute("qaTot", qaTot);

		return "/detail/detail";
	}
	
	//회수 신청
	//해야함
	@GetMapping("/")
	public String returnPlz(String sub_num) {
		return "";
	}
	
	//이미지 전환 test
	@GetMapping("/testImg")
	public String changeIMG() {
		return "/detail/test_Sample";
	}

}
