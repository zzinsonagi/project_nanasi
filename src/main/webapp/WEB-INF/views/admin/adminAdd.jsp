<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ include file="../main/header_BY.jsp"%>
<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Admin Page</h2>
    <p>상품 관리 > 상품 등록</p>
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
          <li><a class="category-small" href="../admin/adminAdd.html" style="color: #185fff">상품 등록</a></li>
          <li><a class="category-small" href="../admin/adminUpdateList.html">상품 수정</a></li>
        </ul>
      </div>

      <div class="col-md-10">
        <div class="prodAdd">
          <form name="prodAdd" method="post" action="" onsubmit="return check()">
            <table class="prodAdd">
              <tr>
                <th>상품명 <span class="notNull">*</span></th>
                <td>
                  <input id="prod_name" name="prod_name" class="form-control" type="text" placeholder="상품명" />
                </td>
              </tr>
              <tr>
                <th>원가 <span class="notNull">*</span></th>
                <td>
                  <input id="prod_price" name="prod_price" class="form-control" type="text" placeholder="원가" />
                </td>
              </tr>
              <tr>
                <th>상품 분류 <span class="notNull">*</span></th>
                <td>
                  <select id="prod_cate" name="prod_cate" class="form-select" aria-label="Default select example">
                    <option value="0" selected>상품 분류를 선택해주세요</option>
                    <option value="1">Computer</option>
                    <option value="2">PC etc</option>
                    <option value="3">Kitchen</option>
                    <option value="4">Living</option>
                    <option value="5">Home etc</option>
                    <option value="6">Camera</option>
                    <option value="7">Video Recorder</option>
                    <option value="8">Video Player</option>
                    <option value="9">Video etc</option>
                    <option value="10">Fitness</option>
                    <option value="11">Beauty Device</option>
                    <option value="12">Health etc</option>
                    <option value="13">Console</option>
                    <option value="14">Game Pack</option>
                    <option value="15">Game etc</option>
                  </select>
                </td>
              </tr>
              <tr>
                <th>색상명</th>
                <td>
                  <select id="prod_color" name="prod_color" class="form-select" aria-label="Default select example">
                    <option value="0" selected>색상을 선택해주세요</option>
                    <option value="1">미드나이트</option>
                    <option value="2">스타라이트</option>
                    <option value="3">스페이스 그레이</option>
                    <option value="4">실버</option>
                  </select>
                </td>
              </tr>
              <tr>
                <th>브랜드</th>
                <td>
                  <input id="prod_brand" name="prod_brand" class="form-control" type="text" placeholder="브랜드" />
                </td>
              </tr>
              <tr>
                <th>첨부파일</th>
                <td>
                  <div class="mb-3">
                    <label for="formFileMultiple" class="form-label"></label>
                    <input id="formFileMultiple" name="" class="form-control" type="file" multiple />
                  </div>
                </td>
              </tr>
            </table>
            <div class="btn-wrap">
              <input type="reset" value="다시쓰기" class="btn_reset" />
              <input type="submit" value="저장하기" class="btn_ok" />
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script>
  function check() {
    if (prodAdd.prod_name.value == "") {
      alert("상품명은 필수 입력입니다.");
      prodAdd.prod_name.focus();
      return false;
    }
    if (prodAdd.prod_price.value == "") {
      alert("상품원가는 필수 입력입니다.");
      prodAdd.prod_price.focus();
      return false;
    }
    if (prodAdd.prod_cate.value == 0) {
      alert("상품 분류는 필수 선택입니다.");
      prodAdd.prod_cate.focus();
      return false;
    }
    return true;
  }
</script>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
