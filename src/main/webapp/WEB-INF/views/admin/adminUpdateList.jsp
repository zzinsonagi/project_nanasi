<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Admin Page</h2>
    <p>상품 관리 > 상품 수정</p>
  </div>
</div>

<div class="Admin">
  <div class="container" style="padding-right: 20px">
    <div class="row" style="padding: 0 20px">
      <div class="col-md-2">
        <div class="line line-category"></div>
        <ul class="navbar-nav pcCate">
          <li><a class="category-big">회원관리</a></li>
          <li><a class="category-small" href="../admin/adminReturn.html">회수요청</a></li>
          <li><a class="category-small" href="../admin/adminQnaList.html">Q&A 관리</a></li>
          <li><a class="category-small" href="../admin/adminReview.html">리뷰 관리</a></li>
        </ul>
        <ul class="navbar-nav homeCate">
          <li><a class="category-big"> 상품관리</a></li>
          <li><a class="category-small" href="../admin/adminAdd.html">상품 등록</a></li>
          <li><a class="category-small" href="../admin/adminUpdateList.html" style="color: #185fff">상품 수정</a></li>
        </ul>
      </div>

      <div class="col-md-10" style="padding: 0 40px">
        <div class="prodUpdate">
          <form name="prodSearch" method="post" action="">
            <div class="prodSearch float-end">
              <input class="search-input" type="search" name="search" placeholder="상품명을 입력해주세요" />
              <button type="submit"><i class="bi bi-search"></i></button>
            </div>
            <div class="clearfix" style="margin-bottom: 40px"></div>
          </form>

          <form name="prodList" method="get" action="">
            <div class="row">
              <!-- 반복되는 부분 -->
              <div class="col-md-4">
                <div class="product">
                  <a class="productImg" href="../admin/adminUpdate.html">
                    <img src="../../static/images/michieda/michi.png" />
                  </a>

                  <div class="clearfix"></div>

                  <a href="../admin/adminUpdate.html">미치에다 슌스케</a>

                  <div class="clearfix" style="margin-bottom: 4px"></div>

                  <span class="price">72,500원</span>
                  <p>월 구독료</p>
                </div>
              </div>
              <!-- 반복되는 부분 끝-->
            </div>
          </form>
          <div class="paging">
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
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
