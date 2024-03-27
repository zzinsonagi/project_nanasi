<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
      <div class="con_title">
            <h1>내정보(개인회원)</h1>
         <p>HOME / 마이페이지 / 내정보(개인회원)</p>
        </div>
      <div class="join_write col_989">
                <div class="list_con">
                    <ul class="icon_type1">
                        <li>회원정보는 개인정보 취급방침에 따라 안전하게 보호되며 회원님의 명백한 동의 없이 공개 또는 제3자에게 제공되지 않습니다.</li>
                    </ul>
                </div>
       <form name="member" method="post" action="member" id="member">
            <table class="table_write02" summary="회원가입을 위한 이름, 아이디, 비밀번호, 비밀번호확인, 소속, 유선전화번호, 휴대전화번호, 이메일, 주소, 본인확인질문, 본인확인답, 주활용사이트, 알림여부 정보 입력">
                <caption>회원가입을 위한 정보입력표</caption>
                <colgroup>
                    <col width="160px">
                    <col width="auto">
                </colgroup>
                <tbody id="joinDataBody">
                    
                    <tr>
                        <th><label for="user_id">아이디<span class="must"></span></label></th>
                        <td>
                            <input type="text" name="user_id" id="user_id" class="w300">
                            <button type="button" id="idCheckBtn" class="btn btn-default" onclick="checkLoginId();">중복확인</button>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="user_pw">비밀번호<!-- <span class="must"><b>필수입력</b></span> --></label></th>
                        <td>
                            <input type="password" name="user_pw" id="user_pw" class="w300">
                            <p class="guideTxt">영문(대문자 구분), 숫자, 특수문자의 조합으로 9~13자로 작성해 주십시오.</p>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="pw2">비밀번호확인<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                            <input type="password" name="user_pw2" id="user_pw2" class="w300">
                            <p id="pwmsg"></p>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="name">이름</label></th>
                        <td>
                            <input type="text" name="user_name" id="user_name"  class="w300">
                        	<p id="namemsg"></p>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="jumin1">주민번호<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                           	<input type="text" name="user_jumin1" id="user_jumin1" class="w300">
                            -<input type="text" name="user_jumin2" id="jumin2" class="w300">
                       </td>
                    </tr>
              		<tr>
                        <th><label for="tel">전화번호<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                            <input type="text" name="user_phone" id="user_phone" class="w300">
                            <p id = "telmsg"></p>
                        </td>
                    </tr>
                    <tr>
                        <th><label for="tel">주소<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                            <input type="text" name="user_address1" id="user_address1" class="w300" placeholder="우편번호">
                            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                            <input type="text" name="user_address2" id="user_address2" class="w300" placeholder="주소"><br>
                            <input type="text" name="user_address3" id="user_address3" class="w300" placeholder="상세주소">
                        </td>
                    </tr>
                    <tr>
                        <th><label for="email">이메일<span class="must"><b>필수입력</b></span></label></th>
                        <td>
                            <input type="email" name="user_email" id="user_email" class="w300" placeholder="이메일주소 입력">
                            <input type="button" id="btn_email" class="btn_email" value="인증번호전송">
                            <p id = "emailmsg"></p>
                            <br>
                            <input type="text" name="num" disabled="disabled" id="checkNum" placeholder="인증번호" class="w300">
                            <input type="button" id="btn-auth" value="인증번호확인">
                        </td>
                    </tr>
                    
            </table>
            <div class="btnArea Acenter pt60 pb100">
              <a href="javascript:history.go(-1);" class="btn_round btn_large btn_BlueGray w180"><b>취소</b></a>
              <a href="javascript:fn_save();" id="btn-next" class="btn_round btn_large btn_pointColor w180"><b>회원등록</b></a>
          </div>
         </form>
        </div>
   </div>
   <!-- end contents -->
   
   <script>
   	
   	function fn_save(){
   		if(!member.user_id.value){ // member.name.value == ""
   			alert("아이디를 입력하세요");
   			member.user_id.focus();
   			return false;
   		}else if(!member.user_pw.value){
   			alert("비밀번호를 입력하세요");
   			member.user_pw.focus();
   			return false;
   		}else if(!member.user_name.value){
   			alert("이름을 입력하세요");
   			member.user_name.focus();
   			return false;
   		}else if(!member.user_jumin1.value){
   			alert("주민번호를 입력하세요");
   			member.user_jumin1.focus();
   			return false;
   		}else if(!member.user_jumin2.value){
   			alert("주민번호를 입력하세요");
   			member.user_jumin2.focus();
   			return false;
   		}else if(!member.user_phone.value){
   			alert("전화번호를 입력하세요");
   			member.user_phone.focus();
   			return false;
   		}else if(!member.user_address1.value){
   			alert("주소를 입력하세요");
   			member.user_address1.focus();
   			return false;
   		}else if(!member.user_address2.value){
   			alert("주소를 입력하세요");
   			member.user_address2.focus();
   			return false;
   		}else if(!member.user_address3.value){
   			alert("주소를 입력하세요");
   			member.user_address3.focus();
   			return false;
   		}else if(!member.user_email.value){
   			alert("이메일를 입력하세요");
   			member.user_email.focus();
   			return false;
   		}
   		member.submit(); // member 폼안에 모든 값들을 action="" 서버로 전송한다
   	}// fn.save
   	
 /*   	function checkLoginId() {
   	    const form = document.getElementById("member");
   	    form.user_id.readonly = false;
   	    const user_id = document.querySelector('#member input[name="user_id"]');

   	    // JSON 데이터를 비동기적으로 가져오는 fetch API 사용
   	    fetch('/member-count', {
   	        method: 'POST',
   	        headers: {
   	            'Content-Type': 'application/json'
   	        },
   	        body: JSON.stringify({ user_id: user_id.value })
   	    })
   	    .then(response => response.json())
   	    .then(data => {
   	        if (data.count > 0) {
   	            alert("이미 가입된 아이디가 있어요");
   	            user_id.focus();
   	            return false;
   	        }
   	        if (confirm("사용가능한 아이디 입니다.\n 입력하신 아이디 사용할래요??")) {
   	            user_id.readOnly = true;
   	            document.getElementById("idCheckBtn").disabled = true;
   	        }
   	    })
   	    .catch(error => console.error('Error:', error));
   	} */
   	
   	function checkLoginId(){
   		const form = document.getElementById("member");
   		form.user_id.readonly = false;
   		const user_id = document.querySelector('#member input[name="user_id"]'); //== $("#member input[name='username']")
   		const count = getJson('/member-count', {user_id : user_id.value});
   		if(count > 0){
   			alert("이미 가입된 아이디가 있어요");
   			user_id.focus();
   			return false;
   		}
   		if(confirm("사용가능한 아이디 입니다.\n 입력하신 아이디 사용할래요??")){ // '확인','취소'가 나오는 함수 confirm
   			user_id.readOnly = true;
   			document.getElementById("idCheckBtn").disabled =true;
   		}
   	}//fn.checkLoginId
   	
   	function getJson(uri, params){ // 자바스크립트는 변수의 타입을 적지 않는다
   		let json = {};
   		$.ajax({
   			url:uri,
   			type:'get',
   			data:params,
   			dataType:'json',
   			async: false,
   			success:function(response){
   				json = response;
   			},error:function(){
   				alert("통신에러");
   			}
   		})
   		return json;
   	}//fn.getJson

   </script>
   
   
   <script>
   
  /*  var token = $("meta[name='_csrf']").attr("content");
   var header = $("meta[name='_csrf_header']").attr("content"); */
   var code="";
   var incode="";
   var num = "0";
   
     $(function() {         
       	$("#user_pw2").blur(function(){
       		var pw1 = $("#user_pw").val();
       		var pw2 = $("#user_pw2").val();
       		if(pw1 == "" || pw2 == ""){
	       		if(pw1 == ""){
    	   			$("#pwmsg").html("<span style='color:#f00;'>비밀번호를 입력하세요</span>")
       				$("#user_pw").focus();
       			} else if(pw2 == ""){
    	   			$("#pwmsg").html("<span style='color:#f00;'>비밀번호를 입력하세요</span>")
       				$("#user_pw2").focus();
	       		}
       		}else{
       			if(pw1 != pw2){
         			$("#pwmsg").html("<span style='color:#f00;'>비밀번호 확인 바랍니다!</span>")
           		}else{
         			$("#pwmsg").html("<span style='color:#00f;'>비밀번호가 일치합니다!</span>")
         		}
       		}
       	})
       	$("#user_name").blur(function(){
       		if(!$("#user_name").val()){
       			$("#namemsg").html("<span style='color:#f00;'>이름은 필수 입력사항입니다</span>");
       			$("#user_name").focus();
       		}else{
       			$("#namemsg").html("");
       		}
       	})
       	
       	$("#user_phone").blur(function(){
       		if(!$("#user_phone").val()){
       			$("#telmsg").html("<span style='color:#f00;'>전화번호는 필수 입력사항입니다</span>");
       			$("#user_phone").focus();
       		}else{
       			$("#telmsg").html("");
       		}
       	})
       	
       	$("#btn_email").on("click", function(){
       		var regEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[a-zA-Z0-9\-]+/;
			if(!regEmail.test($("#user_email").val())){
				alert("이메일 주소가 유효하지 않아요!")
				$("#user_email").focus();
				return false;
			}
			var email = $("#user_email").val();
			$.ajax({
				type:'get',
				url:"/mail.do?mail="+email,
				success:function(data){
					alert("메일전송 완료")
					code = data;
					$("#checkNum").attr("disabled",false);
					$("#checkNum").css("background","#fff");
				}
			}) // ajax end
       	}) 
       	
       	$("#btn-auth").on("click",function(){
			incode = $("#checkNum").val();
			if(code == incode){
				alert("인증 되었습니다");
				num=1;
			}else{
				alert("인증번호를 확인 하세요");
			}
		})
      }); 
   </script>
   
   <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	  function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수

	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }

	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("user_address3").value = extraAddr;
	                
	                } else {
	                    document.getElementById("user_address3").value = '';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('user_address1').value = data.zonecode;
	                document.getElementById("user_address2").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("user_address3").focus();
	            }
	        }).open();
	    }
	</script>


</body>
</html>