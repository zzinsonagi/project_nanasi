package com.nanasi.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nanasi.domain.ProdVO;
import com.nanasi.domain.RevVO;
import com.nanasi.service.DetailService;
import com.nanasi.service.ReviewService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/review")
@RequiredArgsConstructor
public class ReviewController {
	
	private final DetailService dtsv;
	private final ReviewService rvsv;

	//리뷰 등록 페이지 접속
	@GetMapping("/registerEnter")
	public String reviewRegisterEnter(@RequestParam String sub_num, Model model) {
		ProdVO vo = dtsv.detailOne(sub_num);
		model.addAttribute("vo", vo);
		return "/review/registerEnter_Sample";
	}
	
	//리뷰 등록
	@PostMapping("/register")
	public String reviewRegister(RevVO vo) {
		rvsv.reviewRegister(vo);
		return "/review/reviewList_Sample";
	}
	
	//리뷰 수정 페이지 접속
	@GetMapping("/modifyEnter")
	public String modifyEnter(RevVO vo, Model model) {
		//구독 정보
		ProdVO provo = dtsv.detailOne(vo.getSub_num());
		model.addAttribute("provo", provo);
		//리뷰 정보
		RevVO revvo = rvsv.reviewOne(vo.getSub_num());
		model.addAttribute("revvo", revvo);
		return "/review/modifyEnter_Sample";
	}
	
	//리뷰 수정
	@PostMapping("/modify")
	public String modify(RevVO vo) {
		rvsv.reviewModify(vo);
		return "redirect:/review/allPrint";
	}
	
	//(유저가 본인)리뷰 삭제
	@GetMapping("/delete")
	public String delete(@RequestParam String sub_num) {
		rvsv.reviewDelete(sub_num);
		return "redirect:/review/allPrint";
	}
	
	//리뷰 신고
	@GetMapping("/notify")
	public String reviewNotify(@RequestParam String sub_num) {
		//rev_report를 0에서 1로 변경
		rvsv.reviewNotify(sub_num);
		return "redirect:/review/allPrint";
	}
	
	//리뷰 신고 수락(자동 삭제)
	@GetMapping("/notifyAccept")
	public String reviewNotifyAccept(@RequestParam String sub_num) {
		//삭제
		rvsv.reviewDelete(sub_num);
		return "redirect:/review/allPrint";
	}
	
	//리뷰 신고 거절(자동 복구)
	@GetMapping("/notifyReject")
	public String reviewNotifyReject(@RequestParam String sub_num) {
		//복구(rev_report를 1에서 0으로 변경)
		rvsv.reviewNotifyReject(sub_num);
		return "redirect:/review/allPrint";
	}
	
	//상품별 리뷰 목록 출력
	@GetMapping("/productReview")
	public String productReview(@RequestParam String prod_no, Model model) {
		List<RevVO> list = rvsv.reviewAll(prod_no);
		model.addAttribute("list", list);
		return "/review/reviewList_Sample";
	}
	



}
