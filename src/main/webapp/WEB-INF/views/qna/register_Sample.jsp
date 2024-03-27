<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<meta charset="UTF-8">
<title>register_Sample</title>
</head>
<body>
	
	<form name="sampleTest" method="post" action="/qna/befRegister" onsubmit="return checkForm();">
		<p>제품명 : ${vo.prod_name}</p>
		<br/>
	
		<p>제목 : 
		<input type="text" name="qa_title">
		</p>
		<br/>
		
		<p>글쓴이 : 이거 마지막에 로그인하고선 hidden으로 csrf 넘겨줘야할 부분인 것 같음
		<input type="text" name="user_id" readonly value="${vo.user_id}">
		</p>
		<br/>
		
		<p>내용 : 
		<textarea id="qa_content" name="qa_content" style="width: 433px; height: 208px;"></textarea>
		</p>
		<br/>

		<a href="/review/reviewList">목록으로</a>
		<input type="reset" value="다시쓰기" onclick="return resetForm();">
		<input type="submit" value="저장하기">

	</form>
	
</body>

<script>
	//유효성 검사
	function checkForm(){		
		if(qa_title.value == ""){
			alert("질문 제목을 입력하세요.");
			qa_title.focus();
			return false;
		}
		if(qa_content.value == ""){
			alert("질문 내용을 입력하세요.");
			qa_content.focus();
			return false;
		}
		return true;
	}//.checkForm()
	
	//다시 쓰기
	function resetForm(){
		alert("리뷰 등록을 처음부터 다시 합니다.");
		sampleTest.qa_content.focus();
		return;
	}//.resetForm()
</script>
</html>