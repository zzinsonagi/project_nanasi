package com.nanasi.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.domain.ProdVO;

@Mapper
public interface DetailMapper {

	//상품 등록 - 관리자
	public void detailRegister(ProdVO vo);
	
	//전체 상품 출력
	public List<ProdVO> detailList();
	
	//상품 단일 출력
	public ProdVO detailOne(String prod_no);

}
