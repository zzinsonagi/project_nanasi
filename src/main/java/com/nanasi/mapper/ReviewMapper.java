package com.nanasi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.domain.RevVO;

@Mapper
public interface ReviewMapper {

	//리뷰 등록 & 사진 첨부
	public void reviewRegister(RevVO vo);
	
	//리뷰 1개 불러오기
	public RevVO reviewOne(String sub_num);
	
	//리뷰 수정
	public void reviewModify(RevVO vo);
	
	//리뷰 삭제
	public void reviewDelete(String sub_num);
	
	//리뷰 신고
	public void reviewNotify(String sub_num);
	
	//신고된 리뷰 복구
	public void reviewNotifyReject(String sub_num);
	
	//리뷰 출력
	public List<RevVO> reviewAll(String prod_no);

	
}
