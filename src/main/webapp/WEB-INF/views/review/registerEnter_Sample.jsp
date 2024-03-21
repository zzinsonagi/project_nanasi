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
<title>registerInsert_Sample</title>
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
	<h1>리뷰 등록 테스트 화면</h1>
	<form name="sampleTest" method="post" action="/review/register" onsubmit="return checkForm();">
	<input type="hidden" name="sub_num" id="sub_num" value="${vo.sub_num}">
		<table>
			<tr>
				<td colspan="2">${vo.prod_name}, 
					컬러 : ${vo.prod_color}, 
					구독기간 : <fmt:formatDate value="${vo.sub_add}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${vo.prod_endmonth}" pattern="yyyy-MM-dd"/>,
					월 ${vo.prod_subprice}원</td>
			</tr>
			<tr>
				<th>평점</th>
				<td>☆☆☆☆☆ 여긴 ajax겠지/5</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td><input type="text" name="user_id" readonly value="${vo.user_id}"></td>
			</tr>
			<tr>
				<th>리뷰 내용</th>
				<td>
					<textarea id="rev_content" name="rev_content" style="width: 433px; height: 208px;"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="registerBTNClass">
				<a href="/review/reviewList">목록으로</a>
				<input type="reset" value="다시쓰기" onclick="return resetForm();">
				<input type="submit" value="저장하기">
				</td>
			</tr>
		</table>
	</form>
</body>

<script>	
	//유효성 검사
	function checkForm(){		
		if(rev_content.value == ""){
			alert("리뷰 내용을 입력하세요.");
			rev_content.focus();
			return false;
		}
		return true;
	}
	
	//다시 쓰기
	function resetForm(){
		alert("리뷰 등록을 처음부터 다시 합니다.");
		sampleTest.prod_no.focus();
		return;
	}
/* <a href="#" id="resetForm">다시 쓰기</a>
		document.getElementById("resetForm").addEventListener("click", function(event){
		event.preventDefault();
		document.getElementById("sampleTest").reset();
	}) */
</script>

</html>