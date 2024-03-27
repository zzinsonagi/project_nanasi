<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>My Page</h2>
    <p>나의 구독관리 > 내 정보</p>
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
          <li><a class="category-small" href="../my/myInfo.html" style="color: #185fff">내 정보</a></li>
          <li><a class="category-small" href="../my/myinfoEdit.html">회원 정보 수정</a></li>
          <li><a class="category-small" href="../my/pwEdit.html">비밀번호 변경</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <form name="myInfo" method="get">
          <div class="myInfo">
            <div class="line"></div>
            <table class="myInfo">
              <tr>
                <th>ID</th>
                <td>${board.user_id}</td>
              </tr>
              <tr>
                <th>이름</th>
                <td>${board.user_name}</td>
              </tr>
              <tr>
                <th>주민번호</th>
                <td>${board.user_jumin }</td>
              </tr>
              <tr>
                <th>주소</th>
                <td>${board.user_address }</td>
              </tr>
              <tr>
                <th>전화번호</th>
                <td>${board.user_phone }</td>
              </tr>
              <tr>
                <th>이메일</th>
                <td>${board.user_email }</td>
              </tr>
            </table>
            <div class="line"></div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
