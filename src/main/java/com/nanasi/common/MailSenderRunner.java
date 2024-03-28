package com.nanasi.common;

//import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.Date;
import java.util.Random;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Component
@RequiredArgsConstructor //final이 붙은 생성을 자동으로
@Log4j2
public class MailSenderRunner {
	
	private final JavaMailSender mailSender = null;
	
	@Value("${spring.mail.username}")
	private String from;
	
	public String sendMail(String email) {
		Random random = new Random();
		int checkNum = random.nextInt(888888) + 111111;
		log.info("인증번호 : "+checkNum);
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(from);
		message.setTo(email);
		message.setSubject("인증번호 입니다");
		String content = "홈페이지 방문에 감사드립니다. 인증번호는 "+checkNum+"입니다. 인증번호를 인증번호 확인란에 기입해주세요.";
		message.setText(content);
		message.setSentDate(new Date());

		mailSender.send(message);
		String num = Integer.toString(checkNum);
		return num;
	};
	
}
