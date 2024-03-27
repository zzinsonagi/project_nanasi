package com.nanasi.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.nanasi.domain.PTestVo;

@Mapper
public interface PTestMapper {
	void Pinsert(PTestVo vo);
}
