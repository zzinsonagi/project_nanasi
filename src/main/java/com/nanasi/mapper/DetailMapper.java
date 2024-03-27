package com.nanasi.mapper;


import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.domain.ProdVO;

@Mapper
public interface DetailMapper {

	//상품 등록 - 관리자
	public void detailRegister(ProdVO vo);
	
	//전체 상품 출력
	public List<ProdVO> detailList();
	
	//상품 내용 출력
	public ProdVO detailOne(String prod_no);
	
	//구독료 계산
	public int payCalc(String sub_num);
	
	//날짜 계산
	public Date dateCalc(String sub_num);

}
