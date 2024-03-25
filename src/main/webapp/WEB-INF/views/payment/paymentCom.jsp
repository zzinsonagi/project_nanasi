<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include
file="../main/header.jsp"%>

<!-- ----------------------------------- content ----------------------------------- -->

<div class="paymentCom">
  <div class="paymentComIcon">
    <i class="bi bi-check-circle"></i>
  </div>
  <div class="paymentComText">
    <h1>결제가 완료되었습니다!</h1>
    <p>상품이 도착하면 구독이 시작됩니다</p>
  </div>
  <div class="paymentComButton">
    <button type="submit" class="toOption" onclick="window.location.href='../main/main.html'">메인으로</button>
    <button type="submit" class="toPay" onclick="window.location.href='../my/subList.html'">내 구독 목록</button>
  </div>
</div>

<!-- ----------------------------------- content 끝 ----------------------------------- -->
<%@ include file="../main/footer.jsp"%>
