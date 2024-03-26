package com.nanasi.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
	
	@Value("${project.uploadpath}") //file:///C:/upload
	String uploadPath; //이미지 해킹 방지와 웹 상에서 인식 오작동을 방지하기 위해서 사용
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/photo/**").addResourceLocations(uploadPath);
	}
}
