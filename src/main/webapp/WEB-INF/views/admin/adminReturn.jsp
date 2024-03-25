<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Admin Page</h2>
    <p>회원 관리 > 회수요청</p>
  </div>
</div>

<div class="Admin">
  <div class="container" style="padding-right: 20px">
    <div class="row" style="padding: 0 20px">
      <div class="col-md-2">
        <div class="line line-category"></div>
        <ul class="navbar-nav pcCate">
          <li><a class="category-big">회원관리</a></li>
          <li><a class="category-small" href="../admin/adminReturn.html" style="color: #185fff">회수요청</a></li>
          <li><a class="category-small" href="../admin/adminQnaList.html">Q&A 관리</a></li>
          <li><a class="category-small" href="../admin/adminReview.html">리뷰 관리</a></li>
        </ul>
        <ul class="navbar-nav homeCate">
          <li><a class="category-big"> 상품관리</a></li>
          <li><a class="category-small" href="../admin/adminAdd.html">상품 등록</a></li>
          <li><a class="category-small" href="../admin/adminUpdateList.html">상품 수정</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <form name="" method="">
          <!-- 반복되는 부분 -->
          <div class="returnList">
            <div class="returnProductImg">
              <div class="thumbnailImg">
                <img src="../../static/images/michieda/michieda1.png" alt="썸네일 이미지" />
              </div>
            </div>
            <div class="returnProductInfoBtn">
              <div class="returnProductInfo">
                <h4>미치에다 슌스케 (회수요청)</h4>
                <p>컬러 : 스타라이트 | 구독기간 : 3개월</p>
                <div class="returnOwnerInfo">
                  <p>고객명 : 도준우</p>
                  <p>전화번호 : 010-5181-8648</p>
                  <p>주소 : 대전 유성구 반석동 우리집</p>
                </div>
              </div>
              <div class="returnProductBtn float-end">
                <button onclick="window.location.href='../admin/adminReturn.html'">회수 완료</button>
              </div>
            </div>
          </div>
          <div class="line"></div>
          <!-- 반복되는 부분 끝 -->

          <!-- 삭제하면 되는 부분 -->
          <div class="returnList">
            <div class="returnProductImg">
              <div class="thumbnailImg">
                <img src="../../static/images/michieda/michieda1.png" alt="썸네일 이미지" />
              </div>
            </div>
            <div class="returnProductInfoBtn">
              <div class="returnProductInfo">
                <h4>미치에다 슌스케 (회수요청)</h4>
                <p>컬러 : 스타라이트 | 구독기간 : 3개월</p>
                <div class="returnOwnerInfo">
                  <p>고객명 : 도준우</p>
                  <p>전화번호 : 010-5181-8648</p>
                  <p>주소 : 대전 유성구 반석동 우리집</p>
                </div>
              </div>
              <div class="returnProductBtn float-end">
                <button onclick="window.location.href='../admin/adminReturn.html'">회수 완료</button>
              </div>
            </div>
          </div>
          <div class="line"></div>
          <div class="returnList">
            <div class="returnProductImg">
              <div class="thumbnailImg">
                <img src="../../static/images/michieda/michieda1.png" alt="썸네일 이미지" />
              </div>
            </div>
            <div class="returnProductInfoBtn">
              <div class="returnProductInfo">
                <h4>미치에다 슌스케 (회수요청)</h4>
                <p>컬러 : 스타라이트 | 구독기간 : 3개월</p>
                <div class="returnOwnerInfo">
                  <p>고객명 : 도준우</p>
                  <p>전화번호 : 010-5181-8648</p>
                  <p>주소 : 대전 유성구 반석동 우리집</p>
                </div>
              </div>
              <div class="returnProductBtn float-end">
                <button onclick="window.location.href='../admin/adminReturn.html'">회수 완료</button>
              </div>
            </div>
          </div>
          <div class="line"></div>
          <!-- 삭제하면 되는 부분 끝 -->
        </form>
      </div>
    </div>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->

<%@ include file="../main/footer.jsp"%>
