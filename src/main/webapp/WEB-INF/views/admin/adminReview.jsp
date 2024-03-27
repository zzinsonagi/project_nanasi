<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Admin Page</h2>
    <p>회원 관리 > 리뷰 관리</p>
  </div>
</div>

<div class="Admin">
  <div class="container" style="padding-right: 20px">
    <div class="row" style="padding: 0 20px">
      <div class="col-md-2">
        <div class="line line-category"></div>
        <ul class="navbar-nav">
          <li><a class="category-big">회원관리</a></li>
          <li><a class="category-small" href="../admin/adminReturn.html">회수요청</a></li>
          <li><a class="category-small" href="../admin/adminQnaList.html">Q&A 관리</a></li>
          <li><a class="category-small" href="../admin/adminReview.html" style="color: #185fff">리뷰 관리</a></li>
        </ul>
        <ul class="navbar-nav">
          <li><a class="category-big"> 상품관리</a></li>
          <li><a class="category-small" href="../admin/adminAdd.html">상품 등록</a></li>
          <li><a class="category-small" href="../admin/adminUpdateList.html">상품 수정</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <!-- review content, adminst-->
        <div class="content detailQna">
          <div class="contentBox3">
            <div class="review">
              <form name="adminReview" method="" action="">
                <!-- review list 반복되는 부분 -->
                <div class="reviewList2">
                  <div class="reviewProductInfo">
                    <div class="reviewProductInfo">
                      <a href="../detail/detail.html">신고 2건 접수된 리뷰</a>
                      <p>임성근 | 2024.03.11 | <button type="button">삭제</button></p>
                      <div class="reviewContent">
                        악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰
                        악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰
                        악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰
                        악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰
                        악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰 악성리뷰
                      </div>
                    </div>
                  </div>
                  <div class="reviewProductImg">
                    <div class="thumbnailImg">
                      <img src="../../static/images/michieda/michieda1.png" alt="썸네일 이미지" />
                    </div>
                  </div>
                </div>
                <div class="line"></div>
                <!-- review list 반복되는 부분 끝 -->
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
    </div>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
