<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="_csrf" content="${_csrf.token}">
 	<meta name="_csrf_header" content="${_csrf.headerName}">
    <!-- bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>

    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- css -->
    <link rel="stylesheet" href="/resources/css/mainSt.css" />
    <!-- <link rel="stylesheet" href="/resources/css/css/searchCateSt.css" /> -->
    <!-- <link rel="stylesheet" href="/resources/css/orderSt.css" /> -->
    <link rel="stylesheet" href="/resources/css/memSt.css" />
    <link rel="stylesheet" href="/resources/css/adminSt.css" />

    <title>WhatSub</title>
  </head>

  <body>
    <!-- ----------------------------------- content ----------------------------------- -->

    <div class="back-to-main">
      <a href="../main/main.html">
        <img src="../resources/images/mainlogo.png" alt="로고 이미지" />
      </a>
    </div>

    <div class="terms">
      <div class="termsTitle">
        <h4>로그인</h4>
        <div class="line"></div>
        <p>환영합니다 고객님!</p>
      </div>
    </div>

    <div class="login">
      <form name="login" method="post" action="" id="myInfoEdit" onsubmit="return check();">
       <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
        <div class="loginInfo">
          <div class="idPw">
            <label>ID</label>
            <div class="msg">
              <input class="w3-input" type="text" id="username" name="username" placeholder="아이디를 입력해주세요." />
              <p id="idmsg"></p>
            </div>
            <label>PASSWORD</label>
            <div class="msg">
              <input
                class="w3-input"
                type="password"
                id="password"
                name="password"
                placeholder="비밀번호를 입력해주세요."
              />
              <p id="pwmsg"></p>
            </div>
          </div>
          <div class="idPwBtn">
            <button type="submit" class="btn_ok">Login</button>
          </div>
        </div>
      </form>
      <div class="idPwJoinPath">
        <button type="button" class="btn_ok" onclick="location.href='../member/idFind.html'">
          <span>아이디 찾기</span>
        </button>
        <span>|</span>
        <button type="button" class="btn_ok" onclick="location.href='../member/pwFind.html'">
          <span>비밀번호 찾기</span>
        </button>
        <span>|</span>
        <button type="button" class="btn_ok" onclick="location.href='../member/terms.html'">
          <span>회원가입</span>
        </button>
      </div>
    </div>

    <script>
      function check() {
        if (login.user_id.value == "") {
          alert("아이디를 입력해주세요.");
          login.user_id.focus();
          return false;
        }
        if (login.user_pw.value == "") {
          alert("비밀번호를 입력해주세요.");
          login.user_pw.focus();
          return false;
        }
        return true;
        
        var form = document.login;
        form.method="post";
        form.action="/login";
        form.submit();
        
        var msg = "${ssg}";
        
        if(msg){
        	alert(msg);
        }
      }
    </script>

    <!-- ----------------------------------- content 끝 ----------------------------------- -->
    <%@ include file="../main/footer.jsp"%>
  </body>
</html>
