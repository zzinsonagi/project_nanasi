<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- C 태그 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- fmt 태그 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>


<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<meta charset="UTF-8">
<title>detailList_Sample</title>
</head>
<style>
	* {margin:0; padding:0;}
	h1 {text-align:center; margin:20px 12px;}
	body {text-align:center;}
	table {display:inline-block;}
	table, th, td {border:1px solid #ccc;}
	th {height:30px; text-align:center;}
</style>

<body>
	<h1>관리자의 상품 리스트 출력 테스트 화면</h1>
	<form name="sampleTest" method="get" action="/detail/allPrintPaging">
		<input type="hidden" name="pageNum" value="1">
		<input type="hidden" name="amount" value="10">
		<select name="type" class="select">
			<option value="N" ${pageMaker.cri.type == 'N'?'selected':''}>상품 번호</option>
			<option value="M" ${pageMaker.cri.type == 'M'?'selected':''}>상품 이름</option>
			<option value="B" ${pageMaker.cri.type == 'B'?'selected':''}>브랜드</option>
		</select>
		<input type="text" name="keyword" class="search_word" value="${pageMaker.cri.keyword}">
		<button class="btn_search" type="submit"><span class="sr-only">검색</span></button>
	</form>
	<div class="detailList">
		<table>
			<tr>
				<th>상품 이미지</th>
				<th>상품 번호</th>
				<th>상품 이름</th>
				<th>상품 색깔</th>
				<th>상품 브랜드</th>
				<th>상품 가격</th>
				<th>상품 카테고리</th>
				<th>상품 추가 날짜</th>
				<th>상품 평점</th>
			</tr>
			<c:forEach var="list" items="${list}">
				<tr>
					<c:forEach var="imglist" items="${list.prod_attList}" varStatus="status">
						<c:choose>
							<c:when test="${status.first}">
								<td><img src="/photo/${imglist.att_uploadpath}/${imglist.att_uuid}_${imglist.att_uploadfile}" style="width:100px;"></td>
							</c:when>
						</c:choose>
					</c:forEach>
					<td>${list.prod_no}</td>
					<td>${list.prod_name}</td>
					<td>${list.prod_color}</td>
					<td>${list.prod_brand}</td>
					<td>${list.prod_price}</td>
					<td>${list.prod_cate}</td>
					<td><fmt:formatDate value="${list.prod_add}" pattern="yyyy-MM-dd"/></td>
					<td>${list.prod_sco}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>

</html>