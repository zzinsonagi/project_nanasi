package com.nanasi.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.firewall.DefaultHttpFirewall;
import org.springframework.security.web.firewall.HttpFirewall;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

				//이건 설정에 필요한 설계도라는 뜻의 어노테이션으로
				//이거 설정하면 이거 먼저 읽음
@Configuration //이러한 설정들 위에 꼭 이 어노테이션
public class SecurityConfig {
	
	//비밀번호 암호화
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder(); //<<라는 객체를 생성해서 pw를 암호화
	}
	
	//2.x ver에서는 WebSecurityConfigurerAdapter를 상속받아서 SpringSecurityConfig를 만들었다
	@Bean //시큐리티와 관련된 문장이 3.x ver에서는 filterChain을 사용한 람다식으로 바뀌었다
	SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http
		
				/*
				 * .csrf((csrf) -> csrf //주석처리했으니 csrf 사용하겠다는 뜻 .disable())
				 */
		//csrf는 웹 보안 조작된 정보로 웹사이트가 실행되도록 속이는 공격기술
		//스프링시큐리티는 이러한 공격을 방지하기 위해 CSRF토큰을 발행하여 폼 전송시에 해당 토큰을 함께 전송해야 한다
		.authorizeHttpRequests((auth) -> auth
				.requestMatchers("/**") //루트 밑의 모든 폴더나 파일들
				.permitAll())
		//인증되지 않은 모든 페이지의 요청을 허락한다
		.formLogin((formLogin) -> formLogin
				.usernameParameter("username")
				.passwordParameter("password")
				.loginPage("/login") //로그인페이지 요청은 이렇게 내가 만든 페이지로 받을게
				.defaultSuccessUrl("/")) //그리고 성공시 메인으로 보낼게
		//로그인 요청 URL과 로그인 성공시 메인으로 이동한다
		.logout((logout) -> logout
				.logoutRequestMatcher(new AntPathRequestMatcher("/user/logout"))
				.logoutSuccessUrl("/")
				.invalidateHttpSession(true))
		//로그아웃 사용자 URI주소와 로그아웃 성공시 메인으로 이동하고 모든 세션을 제거한다
		;
		http.exceptionHandling(authenticationManager -> authenticationManager
                .authenticationEntryPoint(new CustomAuthenticationEntryPoint()));
      
      return http.build();
          
	}
	
	@Bean //리턴된 HttpFirewall을 스프링에서 관리할 수 있도록 객체로 등록하세요. 즉 Bean은 객체
	public HttpFirewall getHttpFirewall() {
	    return new DefaultHttpFirewall();
	}
}
