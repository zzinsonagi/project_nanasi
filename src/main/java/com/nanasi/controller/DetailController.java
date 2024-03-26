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
import com.nanasi.service.DetailService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/detail")
@RequiredArgsConstructor
public class DetailController {
	
	private final DetailService desv;
	private final FileUploadUtils fuu;

	//상품 등록 페이지 접속 - 관리자
	@GetMapping("/registerEnter")
	public String detailRegisterEnter() {
		return "/detail/registerEnter_Sample";
	}
	
	//상품 등록 & 첨부 파일 - 관리자
	@PostMapping("/register")
	public String detailRegister(ProdVO vo, @RequestParam("uploadfile") MultipartFile[] uploadfile) {
		List<AttachVO> attlist = fuu.uploadFiles(uploadfile);
		vo.setProd_attList(attlist);
		desv.detailRegister(vo);
		return "redirect:/detail/allPrint"; //상품 전체 리스트
	}
	
	//상품 전체 출력
	@GetMapping("/allPrint")
	public String allPrint(Model model) {
		List<ProdVO> list = desv.detailList();
		model.addAttribute("list", list);
		return "/detail/detailList_Sample";
	}
	
	//상품 QnA
	@GetMapping("/qna")
	public String qna() {
		return "/detail/detailQna";
	}
	
	//이미지 전환 test
	@GetMapping("/testImg")
	public String changeIMG() {
		return "/detail/test_Sample";
	}

}
