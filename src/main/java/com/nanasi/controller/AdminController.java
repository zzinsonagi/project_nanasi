package com.nanasi.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nanasi.common.FileUploadUtils;
import com.nanasi.domain.AttachVO;
import com.nanasi.domain.ProdVO;
import com.nanasi.domain.QaVO;
import com.nanasi.domain.RevVO;
import com.nanasi.service.DetailService;
import com.nanasi.service.QnAService;
import com.nanasi.service.ReviewService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin")
public class AdminController {

	private final DetailService desv;
	private final ReviewService rvsv;
	private final QnAService qasv;
	private final FileUploadUtils fuu;
	
	//상품 등록 페이지 접속
	@GetMapping("/adminAdd")
	public String detailRegisterEnter() {
		return "/admin/adminAdd";
	}
	
	//상품 등록 & 첨부 파일
	@PostMapping("/register")
	public String detailRegister(ProdVO vo, @RequestParam("uploadfile") MultipartFile[] uploadfile) {
		List<AttachVO> attlist = fuu.uploadFiles(uploadfile);
		vo.setProd_attList(attlist);
		desv.detailRegister(vo);
		return "redirect:/admin/adminUpdateList"; //상품 전체 리스트 일단은 여기로 출력
	}	
	
	//상품 전체 출력
	//jsp가 없어 //확인 해야함
	@GetMapping("/allPrint")
	public String allPrint(Model model) {
		List<ProdVO> list = desv.detailList();
		model.addAttribute("list", list);
		return "/admin/adminUpdateList";
	}

	//상품 수정 페이지 접속
	@GetMapping("/productUpdateEnter")
	public String productUpdateEnter(String prod_no, Model model) {
		ProdVO prodVo = desv.detailOne(prod_no);
		model.addAttribute("prodVo", prodVo);
		return "/admin/adminUpdateList";
	}
	
	//상품 수정
	//해야함
	@PostMapping("/productUpdate")
	public String productUpdate(String prod_no) {
		
		return "redirect:/admin/allPrint";
	}
	
	//있다면 상품 삭제
	//해야함
	
	//사후 QnA 리스트 페이지 접속
	@GetMapping("/adminQnaList")
	public String adminQnaList(Model model) {
		List<QaVO> qaList = qasv.adminQnaList();
		model.addAttribute("qaList", qaList);
		return "/admin/adminQnaList";
	}
	
	//사후 답변 페이지 접속
	@GetMapping("/adminQnaAns")
	public String adminQnaAns(int qa_num, Model model) {
		QaVO vo = qasv.afterQuestionOne(qa_num); //이거 사전 사후 안 가리고 쓸 수 있음
		model.addAttribute("vo", vo);
		return "/admin/adminQnaAns";
	}
	
	//사후 QnA 답변 등록
	@PostMapping("/adminAnsRegist")
	public String adminAnsRegist(int qa_num, String an_content) {
		qasv.answerRegister(qa_num, an_content);
		qasv.stateUpdate(qa_num);
		return "redirect:/admin/adminQnaList";
	}
	
	//회수 리스트 페이지 접속??									진권
	//해야함
	@GetMapping("/adminReturnList")
	public String adminReturnList(int sub_res, Model model) {
		
		return "/admin/adminReturn";
	}
	
	//0 아무상태도 아님 1 확인중 2 회수 신청 3 파손 신청 4 벌금

	//다썼으니까 가져가라고 회수 신청을 함 0->2
	//관리자가 회수 신청을 확인함 2->1
	//관리자가 회수 신청을 완료되면 1->0
	      
	//사용자가 망가뜨린거 문의함 0->3
	//관리자가 망가뜨린거 수락하고 벌금ㄱㄱ 3->4
	//관리자가 망가뜨린거 확인했는데 아무 이상 없음 3->1
	//완료되면 1 또는 4->0
	
	//회수 신청을 확인중으로 변경									진권
	//해야함
	@GetMapping("/adminReturn")
	public String adminReturn(int sub_res) {
		
		return "redirect:/admin/adminReturn";
	}
	
	//파손 신청을 확인중으로 변경									진권
	//해야함

	//신고된 리뷰 전체 출력
	@GetMapping("/adminReview")
	public String adminReview(int rev_report, Model model) {
		List<RevVO> revList = rvsv.badReview(rev_report);
		int revTot = rvsv.badReviewCount(rev_report);
		model.addAttribute("revList", revList);
		model.addAttribute("revTot", revTot);
		return "/admin/adminReview";
	}
	
	//리뷰 신고 수락(자동 삭제) 							리뷰 삭제되었다고 메일 안 날려도 됨?
	@GetMapping("/notifyAccept")
	public String reviewNotifyAccept(@RequestParam String sub_num) {
		rvsv.reviewDelete(sub_num);
		return "redirect:/admin/adminReview";
	}
	
	//리뷰 신고 거절(자동 복구)
	@GetMapping("/notifyReject")
	public String reviewNotifyReject(@RequestParam String sub_num) {
		//복구(rev_report를 1에서 0으로 변경)
		rvsv.reviewNotifyReject(sub_num);
		return "redirect:/admin/adminReview";
	}
	
}
