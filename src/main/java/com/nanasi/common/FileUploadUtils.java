package com.nanasi.common;

import java.io.File;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nanasi.domain.AttachVO;

import lombok.extern.log4j.Log4j2;
			//@Component는 개발자가 직접 정의한 클래스를 빈으로 등록할 때 사용
@Component //@Bean은 개발자가 콘트롤할 수 없는 라이브러리를 등록할 때 사용
@Log4j2
public class FileUploadUtils {//업로드하는 내용
	
	private final String uploadFolder = Paths.get("C:", "upload").toString();
	
	private String getFolder() { //년월일 폴더 생성하기 위한 날짜 생성 메서드
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 Date date = new Date();
		 String str = sdf.format(date); //생성된 날짜를 형식에 맞게끔 변환
		 return str.replace("-", File.separator); //하이픈(-)을 운영체제에 맞게끔 교체하라 : 윈도우는 \, 리눅스는 /
	}
	
	public List<AttachVO> uploadFiles(@RequestParam("uploadfile") MultipartFile[] uploadFile) {
		
			//날짜 폴더 생성
			String uploadPathDate = getFolder();
			File uploadPath = new File(uploadFolder, uploadPathDate); //C:\\upload\2024\02\15
			log.info("uploadPath : "+uploadPath);
			
			if(uploadPath.exists() == false) { //mkdirs : 존재하지 않는 상위폴더부터 하위폴더까지 만듦
				uploadPath.mkdirs(); //mkdir : 존재하는 폴더는 두고 존재하지 않는 폴더만 만듦
			}
			
			//VO 담기 위한 가변배열 선언
			List<AttachVO> list = new ArrayList<>();
			
			for(MultipartFile file : uploadFile) { //파일 전송 메서드
				
				AttachVO attVo = new AttachVO();
				
				//오리지널 파일 이름
				String uploadOriginalFileName = file.getOriginalFilename();
				String uploadFileName = uploadOriginalFileName.substring(uploadOriginalFileName.lastIndexOf("\\")+1); //IE 익스플로어에서 파일 이름 확인하는 법
				log.info("file name : "+file.getOriginalFilename());
				
				UUID uuid = UUID.randomUUID(); //중복방지를 위한 무작위 UUID 생성
				uploadFileName = uuid.toString()+"_"+uploadFileName;
				
				File saveFile = new File(uploadPath, uploadFileName); //전송하기 위한 폴더와 파일 이름
				
				try {
					file.transferTo(saveFile);
					attVo.setAtt_uuid(uuid.toString());
					attVo.setAtt_uploadpath(uploadPathDate);
<<<<<<< HEAD
					//properties에서 업로드 경로(C:\\upload)를 해놨기 떄문에 얘는 제외하고
					//연월일 날짜 부분만 필요
					attVo.setAtt_uploadfile(uploadOriginalFileName);
//					attVo.setAtt_filetype(true);
=======
					attVo.setAtt_filename(uploadOriginalFileName);
					//properties에서 업로드 경로(C:\\upload)를 해놨기 떄문에 얘는 제외하고
					//연월일 날짜 부분만 필요
					attVo.setAtt_uploadfile(uploadOriginalFileName);
					attVo.setAtt_filetype(true);
>>>>>>> branch 'feature' of https://github.com/zzinsonagi/project_nanasi.git
				} catch (Exception e) {
					e.printStackTrace();
				}
				list.add(attVo);
			}//.for
			return list;
	}//.uploadFiles
	
}//.FileUpload
