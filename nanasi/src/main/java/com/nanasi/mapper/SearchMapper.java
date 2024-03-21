package com.nanasi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.common.ProdCriteria;
import com.nanasi.domain.ProdVO;


@Mapper
public interface SearchMapper {
	
	public List<ProdVO> getList();
	public List<ProdVO> getListWithPaging(ProdCriteria cri);
	public int getTotalCount(ProdCriteria cri);
	
}
