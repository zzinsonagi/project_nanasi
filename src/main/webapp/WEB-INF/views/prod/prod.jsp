<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="./header.jsp"%>

	<c:forEach var="list" items="${list}">
		<tr>
			<th>상품명</th>
			<td>${list.prod_name}</td>
		</tr>
		<tr>
			<th>상품가격</th>
			<td>${list.prod_price}</td>
		</tr>
		
		
	</c:forEach>






	<div class="paging">
			<c:if test="${pageMaker.prev }">
				<a href="${pageMaker.startPage-1}"><i class="fa  fa-angle-double-left"></i></a>
			</c:if>
			<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
				<a href="/search/plist?pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}" class="${pageMaker.cri.pageNum == num ?'active':''}">${num}</a>
			</c:forEach>
			<c:if test="${pageMaker.next }">
				<a href="${pageMaker.endPage+1}"><i class="fa  fa-angle-double-right"></i></a>
			</c:if>
		</div>
		
<%@ include file="./footer.jsp"%>
