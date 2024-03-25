<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>리뷰 수정</h2>
    <p>상품이나 구독 서비스에 대한 후기를 작성해주세요!</p>
  </div>
</div>

<div class="reviewWrite">
  <div class="reviewList">
    <div class="wishProductImg">
      <div class="thumbnailImg">
        <img src="../../static/images/michieda/michieda1.png" alt="썸네일 이미지" />
      </div>
    </div>
    <div class="wishProductInfoBtn">
      <div class="wishProductInfo" style="margin-top: 32px">
        <h4>미치에다 슌스케 (구독중)</h4>
        <p>컬러 : 스타라이트 | 구독기간 : 2024.03.21~2024.06.21</p>
        <div class="wishPriceInfo">
          <span>월 18,000원</span>
        </div>
      </div>
    </div>
  </div>

  <form name="review" method="post" action="" onsubmit="return check()">
    <table class="reviewWriteTable">
      <colgroup>
        <col width="16%" />
        <col width="*" />
      </colgroup>
      <tbody>
        <tr>
          <th>평점</th>
          <td>
            <div class="star">
              <span class="star-input">
                <span class="input">
                  <input type="radio" name="star-input" value="1" id="p1" />
                  <label for="p1">1</label>
                  <input type="radio" name="star-input" value="2" id="p2" />
                  <label for="p2">2</label>
                  <input type="radio" name="star-input" value="3" id="p3" />
                  <label for="p3">3</label>
                  <input type="radio" name="star-input" value="4" id="p4" />
                  <label for="p4">4</label>
                  <input type="radio" name="star-input" value="5" id="p5" />
                  <label for="p5">5</label>
                </span>
                <output for="star-input"><b>0</b></output>
              </span>
            </div>
          </td>
        </tr>
        <tr>
          <th>제목 <span class="notNull">*</span></th>
          <td><input type="text" name="title" /></td>
        </tr>
        <tr>
          <th>글쓴이 <span class="notNull">*</span></th>
          <td><input type="text" name="writer" /></td>
        </tr>
        <tr>
          <th>내용 <span class="notNull">*</span></th>
          <td><textarea name="content"></textarea></td>
        </tr>
      </tbody>
    </table>
    <div class="btn_wrap">
      <input type="button" value="목록으로" class="btn_list" onClick="location.href='../my/subList.html';" />
      <input type="reset" value="다시쓰기" class="btn_reset" />
      <input type="submit" value="저장하기" class="btn_ok" />
    </div>
  </form>
</div>

<!-- 별점 스크립트 -->
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/star.js"></script>

<script>
  function check() {
    if (review.title.value == "") {
      alert("제목을 입력해주세요");
      review.title.focus();
      return false;
    }

    if (review.writer.value == "") {
      alert("글쓴이를 입력해주세요");
      review.writer.focus();
      return false;
    }

    if (review.content.value == "") {
      alert("내용을 입력해주세요");
      review.content.focus();
      return false;
    }
    return true;
  }
</script>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
