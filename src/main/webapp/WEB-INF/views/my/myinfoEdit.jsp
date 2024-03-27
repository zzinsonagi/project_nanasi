<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header_BY.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>My Page</h2>
    <p>나의 구독관리 > 회원 정보 수정</p>
  </div>
</div>

<div class="Mypage">
  <div class="container" style="padding-right: 20px">
    <div class="row" style="padding: 0 20px">
      <div class="col-md-2">
        <div class="line line-category"></div>
        <ul class="navbar-nav pcCate">
          <li><a class="category-big">나의 구독관리</a></li>
          <li><a class="category-small" href="../my/wish.html">위시리스트</a></li>
          <li><a class="category-small" href="../my/subList.html">구독 목록</a></li>
        </ul>
        <ul class="navbar-nav homeCate">
          <li><a class="category-big">회원정보 관리</a></li>
          <li><a class="category-small" href="../my/myInfo.html">내 정보</a></li>
          <li><a class="category-small" href="../my/myinfoEdit.html" style="color: #185fff">회원 정보 수정</a></li>
          <li><a class="category-small" href="../my/pwEdit.html">비밀번호 변경</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <form name="myInfoEdit" method="post" action="" id="myInfoEdit">
          <div class="myInfoEdit">
            <div class="idPw">
              <label>ID <span class="notNull">*</span></label>
              <div class="msg">
                <input class="w3-input form-control" type="text" id="user_id" name="user_id" />
                <p id="idmsg"></p>
              </div>
            </div>

            <div class="memInfo">
              <label>이름 <span class="notNull">*</span></label>
              <input class="w3-input form-control" type="text" id="user_id" name="user_id" readonly />

              <label>주민번호 <span class="notNull">*</span></label>
              <div class="jumin">
                <input class="w3-input form-control" type="text" id="user_jumin" name="user_jumin" readonly />
                <p>-</p>
                <input class="w3-input form-control" type="password" id="user_jumin" name="user_jumin" readonly />
              </div>

              <label>주소 <span class="notNull">*</span></label>
              <div class="postNum">
                <input class="w3-input form-control" type="text" id="user_address" name="user_address" />
                <button type="submit">우편번호 찾기</button>
              </div>
              <input
                class="w3-input form-control"
                type="text"
                id="user_address"
                name="user_address"
                placeholder="기본주소"
              />
              <input
                class="w3-input form-control"
                type="text"
                id="user_address"
                name="user_address"
                placeholder="상세주소"
              />

              <label>전화번호 <span class="notNull">*</span></label>
              <div class="phone">
                <input class="w3-input form-control" type="text" id="user_phone" name="user_phone" />
                <p>-</p>
                <input class="w3-input form-control" type="text" id="user_phone" name="user_phone" />
                <p>-</p>
                <input class="w3-input form-control" type="text" id="user_phone" name="user_phone" />
              </div>
            </div>

            <div class="memEmail">
              <label>이메일 <span class="notNull">*</span></label>
              <div class="email">
                <input class="w3-input form-control" type="text" id="user_email" name="user_email" />
                <p>@</p>
                <input class="w3-input form-control" type="password" id="user_email" name="user_email" />
                <button type="submit">인증번호 전송</button>
              </div>
              <div class="email-ok">
                <input class="w3-input form-control" type="password" id="user_email" name="user_email" />
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
    </div>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
