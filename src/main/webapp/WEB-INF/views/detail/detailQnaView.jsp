<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="title-container">
  <div class="title">
    <h2>Q&A 질문하기</h2>
    <p>구독하시려는 상품에 대해 궁금한 점이 있으신 경우 문의해주세요.</p>
  </div>
</div>

<div class="qnaView">
  <form name="qna" method="get" action="">
    <table class="qnaViewTable">
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
        <tr>
          <th><div class="line"></div></th>
          <td><div class="line"></div></td>
        </tr>
        <tr>
          <th>답변</th>
          <td>
            네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네
            그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다 네 그렇습니다
            네 그렇습니다 네 그렇습니다
          </td>
        </tr>
      </tbody>
    </table>
    <div class="btn_wrap">
      <input type="button" value="Q&A목록" class="btn_list" onClick="location.href='../detail/detail.html';" />
    </div>
  </form>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
