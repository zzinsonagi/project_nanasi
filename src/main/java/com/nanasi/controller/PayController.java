package com.nanasi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nanasi.domain.PTestVo;
import com.nanasi.service.PTestService;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@RequestMapping("/pay")
@RequiredArgsConstructor
@Log4j2
public class PayController {
	
	private final PTestService ptestservice;
	
	@GetMapping("/pay1")
	public String PayCall() {
		
		return "/pay/paytest";
	}
	
	@PostMapping("/insert")
	public void insertTest(@RequestBody PTestVo vo) {
		
		log.info("시작한다아ㅏㅏ");
		
		ptestservice.PTestInsert(vo);
	}
	
}
