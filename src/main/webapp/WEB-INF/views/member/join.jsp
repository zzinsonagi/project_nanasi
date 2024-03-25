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
        <h4>회원가입</h4>
        <div class="line"></div>
        <p>환영합니다 고객님!</p>
        <p><span class="notNull">*</span>은 필수 입력입니다. 빠짐없이 입력하여주세요.</p>
      </div>
    </div>

    <div class="join">
      <form name="join" method="post" action="" id="myInfoEdit" onsubmit="return check();">
        <div class="myInfoEdit">
          <div class="idPw">
            <label>ID <span class="notNull">*</span></label>
            <div class="msg">
              <input
                class="w3-input form-control"
                type="text"
                id="user_id"
                name="user_id"
                placeholder="아이디를 입력해주세요"
              />
              <p id="idmsg"></p>
            </div>
            <label>PASSWORD <span class="notNull">*</span></label>
            <div class="msg">
              <input
                class="w3-input form-control"
                type="password"
                id="user_pw"
                name="user_pw"
                placeholder="비밀번호를 입력해주세요"
              />
              <p id="pwmsg"></p>
            </div>
            <label>PASSWORD 확인 <span class="notNull">*</span></label>
            <div class="msg">
              <input
                class="w3-input form-control"
                type="password"
                id="user_pw2"
                name="user_pw2"
                placeholder="비밀번호를 확인해주세요"
              />
              <p id="pwmsg"></p>
            </div>
          </div>

          <div class="memInfo">
            <label>이름 <span class="notNull">*</span></label>
            <input
              class="w3-input form-control"
              type="text"
              id="user_id"
              name="user_id"
              placeholder="이름을 입력해주세요"
            />

            <label>주민번호 <span class="notNull">*</span></label>
            <div class="jumin">
              <input class="w3-input form-control" type="text" id="user_jumin" name="user_jumin" placeholder="020725" />
              <p>-</p>
              <input
                class="w3-input form-control"
                type="password"
                id="user_jumin"
                name="user_jumin"
                placeholder="3000000"
              />
            </div>

            <label>주소 <span class="notNull">*</span></label>
            <div class="postNum">
              <input
                class="w3-input form-control"
                type="text"
                id="user_address"
                name="user_address"
                placeholder="우편번호를 입력해주세요"
              />
              <button type="submit">우편번호 찾기</button>
            </div>
            <input
              class="w3-input form-control"
              type="text"
              id="user_address"
              name="user_address"
              placeholder="기본주소를 입력해주세요"
            />
            <input
              class="w3-input form-control"
              type="text"
              id="user_address"
              name="user_address"
              placeholder="상세주소를 입력해주세요"
            />

            <label>전화번호 <span class="notNull">*</span></label>
            <div class="phone">
              <input class="w3-input form-control" type="text" id="user_phone" name="user_phone" placeholder="010" />
              <p>-</p>
              <input class="w3-input form-control" type="text" id="user_phone" name="user_phone" placeholder="0725" />
              <p>-</p>
              <input class="w3-input form-control" type="text" id="user_phone" name="user_phone" placeholder="0728" />
            </div>
          </div>

          <div class="memEmail">
            <label>이메일 <span class="notNull">*</span></label>
            <div class="email">
              <input
                class="w3-input form-control"
                type="text"
                id="user_email"
                name="user_email"
                placeholder="michilover"
              />
              <p>@</p>
              <input
                class="w3-input form-control"
                type="text"
                id="user_email"
                name="user_email"
                placeholder="whatsub.com"
              />
              <button type="submit">인증번호 전송</button>
            </div>
            <div class="email-ok">
              <input
                class="w3-input form-control"
                type="password"
                id="email_chk"
                name="email_chk"
                placeholder="인증번호를 입력해주세요"
              />
              <button type="submit">인증번호 확인</button>
            </div>
          </div>
        </div>

        <div class="btn-wrap">
          <input type="reset" value="다시쓰기" class="btn_reset" />
          <input type="submit" value="저장하기" class="btn_ok" />
        </div>
      </form>
    </div>

    <script>
      function check() {
        if (join.user_id.value == "") {
          alert("아이디를 입력해주세요.");
          join.user_id.focus();
          return false;
        }
        if (join.user_pw.value == "") {
          alert("비밀번호를 입력해주세요.");
          join.user_pw.focus();
          return false;
        }
        if (join.user_pw2.value == "") {
          alert("비밀번호를 확인해주세요.");
          join.user_pw2.focus();
          return false;
        }
        if (join.user_name.value == "") {
          alert("이름을 입력해주세요.");
          join.user_name.focus();
          return false;
        }
        if (join.user_jumin.value == "") {
          alert("주민번호를 입력해주세요.");
          join.user_jumin.focus();
          return false;
        }
        if (join.user_address.value == "") {
          alert("주소를 입력해주세요.");
          join.user_address.focus();
          return false;
        }
        if (join.user_email.value == "") {
          alert("이메일을 입력해주세요.");
          join.user_email.focus();
          return false;
        }
        if (join.email_chk.value == "") {
          alert("이메일을 인증해주세요.");
          join.email_chk.focus();
          return false;
        }
        return true;
      }
    </script>

    <!-- ----------------------------------- content 끝 ----------------------------------- -->
    <%@ include file="../main/footer.jsp"%>
  </body>
</html>
