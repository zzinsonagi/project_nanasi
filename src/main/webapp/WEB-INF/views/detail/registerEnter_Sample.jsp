<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>detailInsert_Sample</title>
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
	<h1>관리자의 상품 등록 테스트 화면</h1>
	<form name="sampleTest" method="post" enctype="multipart/form-data" action="/detail/register" onsubmit="return checkForm();">
		<table>
			<tr>
				<th>상품 이름</th>
				<td><input type="text" name="prod_name"></td>
			</tr>
			<tr>
				<th>상품 색깔</th>
<!-- 				<td>
						<input type="radio" name="prod_color" value="미정">색깔을 선택하세요
						<input type="radio" name="prod_color" value="그 외">그 외
						<input type="radio" name="prod_color" value="미드나이트">미드나이트
						<input type="radio" name="prod_color" value="스타라이트">스타라이트
						<input type="radio" name="prod_color" value="스페이스 그레이">스페이스 그레이
						<input type="radio" name="prod_color" value="실버">실버
					</td> -->
					<td>
					<select name="prod_color" id="prod_color">
						<option value="미정">색깔을 선택하세요</option>
						<option value="그 외">그 외</option>
						<option value="미드나이트">미드나이트</option>
						<option value="스타라이트">스타라이트</option>
						<option value="스페이스 그레이">스페이스 그레이</option>
						<option value="실버">실버</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>상품 브랜드</th>
				<td><input type="text" name="prod_brand"></td>
			</tr>
			<tr>
				<th>상품 원가</th> <!-- 숫자만 입력하도록 하는 함수 -->
				<td><input type="text" 
				oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" 
				name="prod_price"></td>
			</tr>
			<tr>
				<th>상품 카테고리</th>
				<td><input type="text" name="prod_cate"></td>
			</tr>
			<tr>
				<th>첨부 파일</th>
				<td>
					<input type="file" name="uploadfile" id="uploadfile" multiple="multiple">
				</td>
			</tr>
			<tr>
				<td colspan="2" class="registerBTNClass">
					<input type = "submit" value = "상품등록">
					<input type = "reset" value = "다시쓰기" onclick = "return resetForm();">
				</td>
			</tr>
		</table>
	</form>
</body>

<script>	
	//유효성 검사
	function checkForm(){		
		if(sampleTest.prod_name.value == ""){
			alert("상품 이름을 입력하세요.");
			sampleTest.prod_name.focus();
			return false;
		}
		var colorCheck = $("select[name=prod_color] option:selected").text();
		if(colorCheck === "색깔을 선택하세요"){
			alert("상품 색깔을 선택하세요.");
			return false;
		}
/*		radio type 사용시 주석 해제

		if(!sampleTest.prod_color[0].checked 
			&& !sampleTest.prod_color[1].checked 
			&& !sampleTest.prod_color[2].checked 
			&& !sampleTest.prod_color[3].checked 
			&& !sampleTest.prod_color[4].checked
			&& !sampleTest.prod_color[5].checked){
				alert("상품 색깔을 입력하세요.");
				sampleTest.prod_color[0].focus();
				return false;
		}
*/ 
		if(sampleTest.prod_brand.value == ""){
			alert("상품 브랜드를 입력하세요.");
			sampleTest.prod_brand.focus();
			return false;
		}
		if(sampleTest.prod_price.value == ""){
			alert("상품 가격을 입력하세요.");
			sampleTest.prod_price.focus();
			return false;
		}
		if(sampleTest.prod_cate.value == ""){
			alert("상품 카테고리를 입력하세요.");
			sampleTest.prod_cate.focus();
			return false;
		}
		return true;
	}
	
	//다시 쓰기
	function resetForm(){
		alert("상품 등록을 처음부터 다시 합니다.");
		sampleTest.prod_no.focus();
		return;
	}
</script>

</html>