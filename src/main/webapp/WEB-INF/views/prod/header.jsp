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
  <meta name="Generator" content="eclipse">
  <meta name="Author" content="JSLHRD인재개발원">
  <meta name="Keywords" content="반응형홈페이지,  JAVA, JSP, PHP, 대전직업전문학교, 대전국비지원, 국비무료">
  <meta name="Description" content="응용SW개발자를 위한 반응형 홈페이지">
  <meta name="_csrf" content="${_csrf.token}">
  <meta name="_csrf_header" content="${_csrf.headerName}">
  <title>JSL인재개발원</title>
  <link rel="apple-touch-icon" sizes="180x180" href="/images/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="/images/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="16x16" href="/images/favicon-16x16.png">
  <link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
  <!-- Latest compiled and minified CSS -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
  <link href="/resources/css/common.css" rel="stylesheet">
  <link href="/resources/css/layout.css" rel='stylesheet'>

  <script src="/resources/js/jquery-3.3.1.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.4.1/dist/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
  

 </head>
 <body>
 <!-- 
 웹문서 만들기 기본 공식
 1. 요소를 어떻게 묶을 것인가? 그룹만들기
 2. 그룹안에 적절한 태그 사용
 3. class 이름 붙이고 css 적용
 -->
	<div class="sr-only">
		<p><a href="#contents">본문 바로가기</a></p>
	</div>

	<div class="top_navigation">
	
		<header class="header">
			<nav class="top_left">
			  <ul>
			  	<li class="first"><a href="/">HOME</a></li>
				<li><a href="">모집안내</a></li>
				<li><a href="">입학상담</a></li>
				<li><a href="">교육신청</a></li>
			  </ul>
			</nav>
			<nav class="top_right">
				<ul>
				<%-- <c:choose>
					<c:when test="${empty member }">
						<li class="first"><a href="/login">로그인</a></li>
						<li><a href="/members">회원가입</a></li>
					</c:when>
					<c:when test="${not empty member }">
						<li class="first">${member.username} 님</li>
						<li><a href="/user/logout">로그아웃</a></li>
						<li><a href="mypage.do">마이페이지</a></li>
					</c:when>
				</c:choose> --%>
				
					<sec:authorize access="isAnonymous()">
						<li class="first"><a href="/login">로그인</a></li>
						<li><a href="/members">회원가입</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<sec:authentication property="principal" var="principal"/>
						<li class="first">${principal.username} 님</li>
						<li><a href="/user/logout">로그아웃</a></li>
						<li><a href="mypage.do">마이페이지</a></li>
					</sec:authorize>
				</ul>
			</nav>
			
			<div class="gnb_group">
				<h1 class="logo">JSL CO</h1>
				<nav class="gnb">
					<ul class="nav_1depth">
						<li><a href="gratings.html">기업소개</a>
							<ul class="nav_2depth">
								<li><a href="gratings.do">인사말</a></li>
								<li><a href="history.do">연혁 및 </a></li>
								<li><a href="gratings.do">교직원소개</a></li>
								<li><a href="photo.do">대우갤러리</a></li>
								<li><a href="map.do">찾아오시는길</a></li>
							</ul>
						</li>

						<li><a href="/board/list.do">포트폴리오</a>
							<ul class="nav_2depth">
								<li><a href="/board/list.do">포트폴리오</a></li>
							</ul>
						</li>
	
						<li><a href="/notice/notice.do">커뮤니티</a>
							<ul class="nav_2depth">
								<li><a href="/notice/notice.do">공지사항</a></li>
								<li><a href="qna.do">질문과답변</a></li>
								<li><a href="faq.do">FAQ</a></li>
								<li><a href="pds.do">자료실</a></li>
								<li><a href="admin.do">관리자</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</header>

		<div class="line">
		</div>

	</div>

	<script>
		//$(document).ready(function() {
		$(function() {
			$(".gnb>.nav_1depth>li").hover(function() {
				$(".gnb>.nav_1depth>li").removeClass();
				$(this).addClass("active");



				$(this).children(".nav_2depth").stop().slideDown("fast");
				}, function() {
				  $(".gnb>.nav_1depth>li").removeClass();
				  $(this).children(".nav_2depth").stop().slideUp("fast");
					});



			});
	</script>