<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

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
        <img src="../../static/images/mainlogo.png" alt="로고 이미지" />
      </a>
    </div>

    <div class="terms">
      <div class="termsTitle">
        <h4>아이디 찾기</h4>
        <div class="line"></div>
        <p>인증번호를 받아 아이디를 찾을 수 있습니다.</p>
      </div>
    </div>

    <div class="idFind">
      <form name="idFind" method="post" action="" id="idFind" onsubmit="return check();">
        <div class="loginInfo">
          <div class="idPw" style="margin: 0">
            <label>이름 <span class="notNull">*</span></label>
            <div class="msg">
              <input class="w3-input" type="text" id="user_name" name="user_name" placeholder="이름을 입력해주세요." />
              <p id="idmsg"></p>
            </div>
            <div class="memEmail">
              <label>이메일 인증 <span class="notNull">*</span></label>
              <div class="email">
                <input class="w3-input form-control" type="text" id="user_email" name="user_email" />
                <p>@</p>
                <input class="w3-input form-control" type="text" id="user_email" name="user_email" />
                <button type="submit">인증번호 전송</button>
              </div>
              <div class="email-ok">
                <input class="w3-input form-control" type="password" id="email_chk" name="email_chk" />
                <button type="submit">인증번호 확인</button>
              </div>
            </div>
          </div>
          <div class="idPwBtn">
            <button type="submit" class="btn_ok">아이디 찾기</button>
          </div>
        </div>
      </form>
    </div>

    <script>
      function check() {
        if (idFind.user_id.value == "") {
          alert("아이디를 입력해주세요.");
          idFind.user_id.focus();
          return false;
        }
        if (idFind.user_email.value == "") {
          alert("이메일을 입력해주세요.");
          idFind.user_email.focus();
          return false;
        }
        if (idFind.email_chk.value == "") {
          alert("이메일을 인증해주세요.");
          idFind.email_chk.focus();
          return false;
        }
        return true;
      }
    </script>

    <!-- ----------------------------------- content 끝 ----------------------------------- -->
    <%@ include file="../main/footer.jsp"%>
  </body>
</html>
