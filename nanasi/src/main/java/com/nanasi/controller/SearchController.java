package com.nanasi.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nanasi.common.ProdCriteria;
import com.nanasi.common.ProdPageDTO;
import com.nanasi.domain.ProdVO;
import com.nanasi.service.SearchService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/search")
@RequiredArgsConstructor
@Log4j2
public class SearchController {
	
	private final SearchService service;
	
	@GetMapping("/plist.do")
	public String boadList(ProdCriteria cri, Model model) {
		List<ProdVO> list = service.pGetList(cri);
		int total = service.pGetTotalCount(cri);
		model.addAttribute("list",list);
		model.addAttribute("pageMaker", new ProdPageDTO(cri, total));
		return "/prod/prod";
	}
	
	
	
}
