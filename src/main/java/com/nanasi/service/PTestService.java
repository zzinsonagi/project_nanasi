package com.nanasi.service;

import org.springframework.stereotype.Service;

import com.nanasi.domain.PTestVo;
import com.nanasi.mapper.PTestMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PTestService {
	
	private final PTestMapper ptestmapper;
	
	public void PTestInsert(PTestVo vo) {
		
		ptestmapper.Pinsert(vo);
		
	}
	
}
