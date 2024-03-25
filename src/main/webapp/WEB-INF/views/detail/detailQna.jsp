<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Q&A 질문하기</h2>
    <p>구독하시려는 상품에 대해 궁금한 점이 있으신 경우 문의해주세요.</p>
  </div>
</div>

<div class="qnaWrite2">
  <form name="qna" method="post" action="" onsubmit="return check()">
    <table class="qnaWriteTable">
      <colgroup>
        <col width="16%" />
        <col width="*" />
      </colgroup>
      <tbody>
        <tr>
          <th>제품명</th>
          <td>미치에다 슌스케</td>
        </tr>
        <tr>
          <th>제목 <span class="notNull">*</span></th>
          <td><input type="text" name="title" /></td>
        </tr>
        <tr>
          <th>글쓴이</th>
          <td><input type="text" name="writer" readonly /></td>
        </tr>
        <tr>
          <th>내용 <span class="notNull">*</span></th>
          <td><textarea name="content"></textarea></td>
        </tr>
      </tbody>
    </table>
    <div class="btn_wrap">
      <input type="button" value="Q&A목록" class="btn_list" onClick="location.href='../detail/detail.html';" />
      <input type="reset" value="다시쓰기" class="btn_reset" />
      <input type="submit" value="저장하기" class="btn_ok" />
    </div>
  </form>
</div>

<script>
  function check() {
    if (qna.title.value == "") {
      alert("제목을 입력해주세요");
      qna.title.focus();
      return false;
    }

    if (qna.writer.value == "") {
      alert("글쓴이를 입력해주세요");
      qna.writer.focus();
      return false;
    }

    if (qna.content.value == "") {
      alert("내용을 입력해주세요");
      qna.content.focus();
      return false;
    }
    return true;
  }
</script>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
