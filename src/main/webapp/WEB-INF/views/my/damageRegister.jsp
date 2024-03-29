<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header_BY.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>고장 및 파손 접수</h2>
    <p>제품의 고장 및 파손에 대한 문의가 있는 경우 작성해주세요.</p>
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
        <tr>
          <th>첨부</th>
          <td><input type="file" name="photo" multiple /></td>
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
