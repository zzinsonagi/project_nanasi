package com.nanasi.service;


import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nanasi.domain.AttachVO;
import com.nanasi.domain.ProdVO;
import com.nanasi.domain.SubVO;
import com.nanasi.mapper.AttachMapper;
import com.nanasi.mapper.DetailMapper;
import com.nanasi.mapper.SubMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class DetailService {
	
	private final DetailMapper mapper;
	private final AttachMapper attmap;
	private final SubMapper submap;

	
	//상품 등록 & 첨부 - 관리자
	@Transactional
	public void detailRegister(ProdVO vo) {
		mapper.detailRegister(vo);
		if(vo.getProd_attList() == null || vo.getProd_attList().size() <= 0) {
			return;
		} else {
			vo.getProd_attList().forEach(attach -> {
				attach.setProd_no(vo.getProd_no());
				attmap.register(attach);
			});
		}
	};
	
	//상품 전체 출력
	public List<ProdVO> detailList() {
		List<ProdVO> list = mapper.detailList();
		for(ProdVO provo : list) {
			String prod_no = provo.getProd_no();
			List<AttachVO> attlist = attmap.productIMG(prod_no);
			provo.setProd_attList(attlist);
		}
		return list;
	}
	
	//상품 단일 출력 + 구독료, 구독 완료일 계산
	public ProdVO detailOne(String sub_num) {
		ProdVO vo = mapper.detailOne(sub_num);
		//사진첨부
		return vo;
	}

}
