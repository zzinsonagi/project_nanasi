package com.nanasi.domain;

import lombok.Data;

@Data
public class AttachVO {
	
	//uuid 무작위값
	private String att_uuid;
	//업로드 경로
	private String att_uploadpath;
	//파일 이름
<<<<<<< HEAD
	private String att_filenmae;
	//업로드 파일
	private String att_uploadfile;
	//파일타입
	private boolean att_filetype;
	//첨부파일 번호
	private int att_num;
	//문의 번호
	private int qa_num;
	//상품 번호
	private String prod_no;
=======
	private String att_filename;
	//업로드 파일
	private String att_uploadfile;
	//파일타입
	private boolean att_filetype;
	//첨부파일 번호
	private int att_num;
	//문의 번호
	private int qa_num;
	//상품 번호 
	private String prod_no;
	//리뷰에서 사용할 것
	private String sub_num;
>>>>>>> branch 'feature' of https://github.com/zzinsonagi/project_nanasi.git
	
}
