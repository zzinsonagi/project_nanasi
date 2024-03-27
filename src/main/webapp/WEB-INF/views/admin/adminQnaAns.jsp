<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header_BY.jsp"%>
<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Admin Page</h2>
    <p>회원 관리 > 리뷰 관리</p>
  </div>
</div>

<div class="qnaView">
  <table class="qnaViewTable">
    <colgroup>
      <col width="16%" />
      <col width="*" />
    </colgroup>
    <tbody>
      <tr>
        <th><div class="line"></div></th>
        <td><div class="line"></div></td>
      </tr>
      <form name="qna" method="get" action="">
        <tr>
          <th>제품명</th>
          <td>미치에다 슌스케</td>
        </tr>
        <tr>
          <th>제목</th>
          <td>배송일부터 구독 시작인가요?</td>
        </tr>
        <tr>
          <th>글쓴이</th>
          <td>도준우</td>
        </tr>
        <tr>
          <th>내용</th>
          <td>
            배송일부터 구독 시작인가요?배송일부터 구독 시작인가요?배송일부터 구독 시작인가요?배송일부터 구독
            시작인가요?배송일부터 구독 시작인가요?배송일부터 구독 시작인가요?배송일부터 구독 시작인가요?배송일부터 구독
            시작인가요?배송일부터 구독 시작인가요?배송일부터 구독 시작인가요?배송일부터 구독 시작인가요?배송일부터 구독
            시작인가요?배송일부터 구독 시작인가요?
          </td>
        </tr>
      </form>
      <tr>
        <th><div class="line"></div></th>
        <td><div class="line"></div></td>
      </tr>
      <form name="qna" method="get" action="">
        <tr>
          <th>답변</th>
          <td><textarea name="content" class="form-control"></textarea></td>
        </tr>
      </form>
      <tr>
        <th><div class="line"></div></th>
        <td><div class="line"></div></td>
      </tr>
    </tbody>
  </table>
  <div class="btn_wrap">
    <input type="button" value="Q&A목록" class="btn_list" onClick="location.href='../admin/adminQnaList.html';" />
    <input type="button" value="저장" class="btn_ok" onClick="location.href='../admin/adminQnaList.html';" />
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
