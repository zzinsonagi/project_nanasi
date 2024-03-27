package com.nanasi.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nanasi.common.ProdCriteria;
import com.nanasi.domain.ProdVO;
import com.nanasi.mapper.SearchMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class SearchService {
	
	
	private final SearchMapper mapper;
	
	public List<ProdVO> pGetList(ProdCriteria cri) {
		
		List<ProdVO> list = mapper.getListWithPaging(cri);
		return list;
		
		
	}
	
	public int pGetTotalCount(ProdCriteria cri) {
		return mapper.getTotalCount(cri);
	}
	
	
	
}
