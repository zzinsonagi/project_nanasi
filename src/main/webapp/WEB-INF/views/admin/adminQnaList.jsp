<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Admin Page</h2>
    <p>회원 관리 > Q&A 관리</p>
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
          <li><a class="category-small" href="../admin/adminQnaList.html" style="color: #185fff">Q&A 관리</a></li>
          <li><a class="category-small" href="../admin/adminReview.html">리뷰 관리</a></li>
        </ul>
        <ul class="navbar-nav homeCate">
          <li><a class="category-big"> 상품관리</a></li>
          <li><a class="category-small" href="../admin/adminAdd.html">상품 등록</a></li>
          <li><a class="category-small" href="../admin/adminUpdateList.html">상품 수정</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <!-- Q&A content, adminst-->
        <div class="content detailQna">
          <div class="contentBox3">
            <div class="qna">
              <div class="qnaTitle">
                <h4>새로운 Q&A 2건</h4>
              </div>
              <div class="qnaWrite">
                <div class="line"></div>
                <div class="qnaWriteTitle">
                  <p style="width: 15%">답변상태</p>
                  <p style="width: 60%">제목</p>
                  <p style="width: 10%">작성자</p>
                  <p style="width: 15%">등록일</p>
                </div>
                <div class="line"></div>

                <form name="qnaList" method="get">
                  <!-- Q&A list 반복되는 부분 -->
                  <div class="qnaList">
                    <div class="qnaState">
                      <!-- 답변상태 -->
                      <span class="qnaListWait">미답변</span>
                    </div>
                    <div class="qnaListTitle">
                      <!-- 제목 -->
                      <a href="../admin/adminQnaAns.html">배송일부터 구독 시작인가요?</a>
                    </div>
                    <div class="qnaListWriter">
                      <!-- 작성자 -->
                      <p>도준우</p>
                    </div>
                    <div class="qnaListDate">
                      <!-- 등록일 -->
                      <p>2024.03.18</p>
                    </div>
                  </div>
                  <div class="line"></div>
                  <!-- Q&A list 반복되는 부분 끝 -->

                  <!-- 삭제할 부분 -->
                  <div class="qnaList">
                    <div class="qnaState">
                      <!-- 답변상태 -->
                      <span class="qnaListWait">미답변</span>
                    </div>
                    <div class="qnaListTitle">
                      <!-- 제목 -->
                      <a href="../admin/adminQnaAns.html"
                        >주문하면 보통 언제부터 배송되나요? 구독 한달은 30일 기준인가요?</a
                      >
                    </div>
                    <div class="qnaListWriter">
                      <!-- 작성자 -->
                      <p>도준우</p>
                    </div>
                    <div class="qnaListDate">
                      <!-- 등록일 -->
                      <p>2024.03.18</p>
                    </div>
                  </div>
                  <div class="line"></div>
                  <!-- 삭제할 부분 끝 -->
                </form>
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
