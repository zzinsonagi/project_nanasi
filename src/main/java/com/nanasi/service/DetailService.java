package com.nanasi.service;


import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nanasi.domain.AttachVO;
import com.nanasi.domain.ProdVO;
import com.nanasi.mapper.AttachMapper;
import com.nanasi.mapper.DetailMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class DetailService {
	
	private final DetailMapper mapper;
	private final AttachMapper attmap;

	
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
		//사진 첨부
		for(ProdVO provo : list) {
			String prod_no = provo.getProd_no();
			List<AttachVO> attlist = attmap.productIMG(prod_no);
			provo.setProd_attList(attlist);
		}
		return list;
	}
	
	//상품 단일 출력 : 구독, 날짜 계산 포함
	public ProdVO detailOne(String sub_num) {
		ProdVO vo = mapper.detailOne(sub_num);

		//구독 계산
		int subPrice = mapper.payCalc(sub_num);
		vo.setProd_subprice(subPrice);
		
		//날짜계산
		Date endMonth = mapper.dateCalc(sub_num);
		vo.setProd_endmonth(endMonth);
		
		//사진 첨부
		String prod_no = vo.getProd_no();
		List<AttachVO> attlist = attmap.productIMG(prod_no);
		vo.setProd_attList(attlist);
		
		return vo;
	}
	
	//구독 계산

}
