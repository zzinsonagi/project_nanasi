package com.nanasi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.domain.AttachVO;

@Mapper
public interface AttachMapper {
		
	//상품 이미지 등록
	public void register(AttachVO vo);
	
	//리뷰 이미지 등록
	public void reviewRegister(AttachVO vo);
	
	//사후 질문 이미지 등록
	public void questionRegister(AttachVO vo);
	
	//상품 전체 출력
	public List<AttachVO> productIMG(String prod_no);
	
	//상품에서 쓸 리뷰 이미지 전체 출력
	public List<AttachVO> reviewProductIMG(String sub_num);

}
