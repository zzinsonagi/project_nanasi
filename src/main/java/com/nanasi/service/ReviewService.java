package com.nanasi.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.nanasi.domain.RevVO;
import com.nanasi.mapper.AttachMapper;
import com.nanasi.mapper.ReviewMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReviewService {
	
	private final AttachMapper attmap;
	private final ReviewMapper rvmap;
	
	//리뷰 등록 & 첨부
	public void reviewRegister(RevVO vo) {
		rvmap.reviewRegister(vo);
		if(vo.getRev_attList() == null || vo.getRev_attList().size() <= 0) {
			return;
		} else {
			vo.getRev_attList().forEach(attach -> {
				attach.setSub_num(vo.getSub_num());
				attmap.reviewRegister(attach);
			});
		}
	};
	
	//리뷰 1개 출력
	public RevVO reviewOne(String sub_num) {
		return rvmap.reviewOne(sub_num);
	}
	
	//리뷰 수정
	public void reviewModify(RevVO vo) {
		rvmap.reviewModify(vo);
	}
	
	//리뷰 삭제
	public void reviewDelete(String sub_num) {
		rvmap.reviewDelete(sub_num);
	}
	
	//리뷰 신고
	public void reviewNotify(String sub_num) {
		rvmap.reviewNotify(sub_num);
	}
	
	//신고된 리뷰 복구
	public void reviewNotifyReject(String sub_num) {
		rvmap.reviewNotifyReject(sub_num);
	}

	//리뷰 전체 출력
	public List<RevVO> reviewAll(String prod_no){
		return rvmap.reviewAll(prod_no);
	}
	
}
