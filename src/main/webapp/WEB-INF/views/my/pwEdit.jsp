<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header_BY.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>My Page</h2>
    <p>나의 구독관리 > 비밀번호 변경</p>
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
          <li><a class="category-small" href="../my/myinfoEdit.html">회원 정보 수정</a></li>
          <li><a class="category-small" href="../my/pwEdit.html" style="color: #185fff">비밀번호 변경</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <form name="myInfoEdit" method="post" action="" id="myInfoEdit">
          <div class="myInfoEdit">
            <div class="idPw">
              <label>현재 비밀번호 <span class="notNull">*</span></label>
              <div class="msg">
                <input
                  class="w3-input form-control"
                  type="password"
                  id="old_pw"
                  name="old_pw"
                  placeholder="현재 비밀번호를 입력해주세요"
                />
                <p id="pwmsg"></p>
              </div>

              <div class="clearfix"></div>

              <label>새 비밀번호 <span class="notNull">*</span></label>
              <div class="msg">
                <input
                  class="w3-input form-control"
                  type="password"
                  id="new_pw"
                  name="new_pw"
                  placeholder="새로운 비밀번호를 입력해주세요"
                />
                <p id="pwmsg"></p>
              </div>

              <label>새 비밀번호 확인 <span class="notNull">*</span></label>
              <div class="msg">
                <input
                  class="w3-input form-control"
                  type="password"
                  id="new_pw2"
                  name="new_pw2"
                  placeholder="새로운 비밀번호를 확인해주세요"
                />
                <p id="pwmsg"></p>
              </div>
            </div>

            <div class="btn-wrap">
              <input type="reset" value="다시쓰기" class="btn_reset" />
              <input type="submit" value="저장하기" class="btn_ok" />
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
