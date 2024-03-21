package com.nanasi.mapper;

import java.util.Date;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SubMapper {
	
	//구독료 계산
	public int subPriceCalc(String prod_no);
	
	//구독완료일 계산
	public Date subEndDateCalc(String prod_no, String sub_num);
}
