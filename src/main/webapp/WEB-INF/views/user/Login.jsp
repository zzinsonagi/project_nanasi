<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!doctype html>
<html lang="ko">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®"> <!-- 개발도구 사용 -->
  <meta name="Author" content="JSL"> <!-- 작성자 -->
  <meta name="Keywords" content="반응형홈페이지,  JAVA, JSP, PHP, 대전직업전문학교, 대전국비지원, 국비무료"> <!-- 검색 키워드 -->
  <meta name="Description" content="응용SW개발자를 위한 반응형 홈페이지">
  <meta name="_csrf" content="${_csrf.token}">
  <meta name="_csrf_header" content="${_csrf.headerName}">
  <title>치피치피차파차파</title>
  <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
  <link href="/resources/css/common.css" rel="stylesheet">
  <link href="/resources/css/layout.css" rel='stylesheet'>
  <link rel="icon" href="/images/apple-icon-120x120.png">
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
  <!--
  	jquery언어 사용법
	1. jquey.js을 기반으로 프로그램을 작성하기 때문에 jquery.js 파일을 다운 또는 CDN 방식으로 링크를 건다
	2. $(function() {
		실행문;
	});
  -->
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->
  <script src="/resources/js/jquery-3.3.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
 <div>
  <nav>
<ul>
            <%-- <c:choose>
               <c:when test="${empty member}">
                  <li class="first"><a href="/login">두부인</a></li>
                  <li><a href="/members">두부가입</a></li>
               </c:when>
               <c:when test="${not empty member}">
                  <li class="first">${member.username} 님</li>
                  <li><a href="/user/logout">로그아웃</a></li>
                  <li><a href="mypage.do">마이페이지</a></li>
               </c:when>
            </c:choose> --%>
            
            	<sec:authorize access="isAnonymous()">
            		<li class="first"><a href="/login">두부인</a></li>
                 	<li><a href="/members">두부가입</a></li>
            	</sec:authorize>
            	<sec:authorize access="isAuthenticated()">
            		<sec:authentication property="principal" var="principal"/>
            		<li class="first">${principal.username} 님</li>
                	<li><a href="/user/logout">로그아웃</a></li>
                	<li><a href="mypage.do">마이페이지</a></li>
            	</sec:authorize>
            </ul>
            </nav>
            </div>
 </head>
 <body>
<div class="container">
		<div class="member_boxL">
			<h2>개인회원</h2>
			<div class="login_form">
				<form id="frmLogin" name="login">
<%--  				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
 --%> 					<div class="fl_clear">
						<label for="mbrId">아이디</label> <input name="user_id" id="user_id" type="text">
					</div>
					<div class="fl_clear">
						<label for="scrtNo">비밀번호</label> <input name="user_pw" id="user_pw" type="password">
					</div>
					<a class="btn_login btn_Blue" href="javascript:fn_login();">로그인</a>
				</form>
			</div>

		</div>
</div>
<!-- end contents -->
<script>
	function fn_login(){
		if(!login.user_id.value){
			alert("아이디 입력");
			login.user_id.focus();
			return false;
		}
		if(!login.user_pw.value){
			alert("패스워드 입력");
			login.user_pw.focus();
			return false;
		}
		// 자바스크립트로 form 태그 속성을 지정할 수 있다
		var form = document.login;
		form.method="post";
		form.action = "/login";
		form.submit();
		
		var msg = "${msg}"; // 자바 속성값을 자바 변수에 저장 할 수 있다
	}
</script>
</body>
</html>