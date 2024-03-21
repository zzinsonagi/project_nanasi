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
	@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
	.rate { display: inline-block;border: 0;margin-right: 15px;}
	.rate > input {display: none;}
	.rate > label {float: right;color: #ddd}
	.rate > label:before {display: inline-block;font-size: 1rem;padding: .3rem .2rem;margin: 0;cursor: pointer;font-family: FontAwesome;content: "\f005 ";}
	.rate .half:before {content: "\f089 "; position: absolute;padding-right: 0;}
	.rate input:checked ~ label, 
	.rate label:hover,.rate label:hover ~ label { color: #f73c32 !important;  } 
	.rate input:checked + .rate label:hover,
	.rate input input:checked ~ label:hover,
	.rate input:checked ~ .rate label:hover ~ label,  
	.rate label:hover ~ input:checked ~ label { color: #f73c32 !important;  } 

	* {margin:0; padding:0;}
	h1 {text-align:center; margin:20px 12px;}
	body {text-align:center;}
	table {display:inline-block;}
	table, th, td {border:1px solid #ccc;}
	th {height:30px; text-align:center;}
</style>


<body>
	<h1>리뷰 등록 테스트 화면</h1>
	<form name="sampleTest" method="post" action="/review/modify?sub_num=${provo.sub_num}" onsubmit="return checkForm();">
		<table>
			<tr>
				<td colspan="2">${provo.prod_name}, 
					컬러 : ${provo.prod_color}, 
					구독기간 : <fmt:formatDate value="${provo.sub_add}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${provo.prod_endmonth}" pattern="yyyy-MM-dd"/>,
					월 ${provo.prod_subprice}원</td>
			</tr>
			<tr>
				<th>평점</th>
				<td>
					<c:forEach var="i" begin="1" end="${revvo.rev_sco}">
					★
					</c:forEach>
						<fieldset class="rate">
							<input type="radio" id="rating10" name="rev_sco" value="10"><label for="rating10" title="5점"></label>
							<input type="radio" id="rating9" name="rev_sco" value="9"><label class="half" for="rating9" title="4.5점"></label>
							<input type="radio" id="rating8" name="rev_sco" value="8"><label for="rating8" title="4점"></label>
							<input type="radio" id="rating7" name="rev_sco" value="7"><label class="half" for="rating7" title="3.5점"></label>
							<input type="radio" id="rating6" name="rev_sco" value="6"><label for="rating6" title="3점"></label>
							<input type="radio" id="rating5" name="rev_sco" value="5"><label class="half" for="rating5" title="2.5점"></label>
							<input type="radio" id="rating4" name="rev_sco" value="4"><label for="rating4" title="2점"></label>
							<input type="radio" id="rating3" name="rev_sco" value="3"><label class="half" for="rating3" title="1.5점"></label>
							<input type="radio" id="rating2" name="rev_sco" value="2"><label for="rating2" title="1점"></label>
							<input type="radio" id="rating1" name="rev_sco" value="1"><label class="half" for="rating1" title="0.5점"></label>
						</fieldset>
				</td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td><input type="text" name="user_id" readonly value="${provo.user_id}"></td>
			</tr>
			<tr>
				<th>리뷰 내용</th>
				<td>
					<textarea id="rev_content" name="rev_content" style="width: 433px; height: 208px;">${revvo.rev_content}</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="registerBTNClass">
				<a href="/review/reviewList">목록으로</a>
				<input type="reset" value="다시쓰기" onclick="return resetForm();">
				<input type="submit" value="저장하기" onclick="setStar();">
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

<script>
	//별점 value 넘겨주기
	function setStar(){
		var revScoInput = document.getElementById('rev_sco');
		revScoInput.value = rev_sco;
	}
</script>


</html>