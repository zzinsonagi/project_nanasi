<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header_BY.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>My Page</h2>
    <p>나의 구독관리 > 위시리스트</p>
  </div>
</div>

<div class="Mypage">
  <div class="container" style="padding-right: 20px">
    <div class="row" style="padding: 0 20px">
      <div class="col-md-2">
        <div class="line line-category"></div>
        <ul class="navbar-nav pcCate">
          <li><a class="category-big">나의 구독관리</a></li>
          <li><a class="category-small" href="../my/wish.html" style="color: #185fff">위시리스트</a></li>
          <li><a class="category-small" href="../my/subList.html">구독 목록</a></li>
        </ul>
        <ul class="navbar-nav homeCate">
          <li><a class="category-big">회원정보 관리</a></li>
          <li><a class="category-small" href="../my/myInfo.html">내 정보</a></li>
          <li><a class="category-small" href="../my/myinfoEdit.html">회원 정보 수정</a></li>
          <li><a class="category-small" href="../my/pwEdit.html">비밀번호 변경</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <form name="" method="">
          <!-- 반복되는 부분 -->
          <div class="wishList">
            <div class="wishProductImg">
              <div class="thumbnailImg">
                <img src="../../static/images/michieda/michieda1.png" alt="썸네일 이미지" />
              </div>
            </div>
            <div class="wishProductInfoBtn">
              <div class="wishProductInfo">
                <h4>미치에다 슌스케</h4>
                <p>컬러 : 스타라이트 | 구독기간 : 3개월</p>
                <div class="wishPriceInfo">
                  <span>월 18,000원</span>
                </div>
              </div>
              <div class="wishProductBtn">
                <button type="button" class="wishOption" onclick="window.location.href='../detail/detail.html'">
                  옵션 바꾸기
                </button>
                <button type="button" class="wishOption" onclick="return delCheck()">목록에서 삭제</button>
                <button type="button" class="wishSub" onclick="window.location.href='../payment/payment.html'">
                  지금 구독하기
                </button>
              </div>
            </div>
          </div>
          <div class="line"></div>
          <!-- 반복되는 부분 끝 -->
        </form>
        <div class="paging2">
          <a href=""><i class="bi bi-chevron-double-left"></i></a>
          <a href="" class="active">1</a>
          <a href="">2</a>
          <a href="">3</a>
          <a href="">4</a>
          <a href="">5</a>
          <a href=""><i class="bi bi-chevron-double-right"></i></a>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
