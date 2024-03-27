<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="_csrf" content="${_csrf.token}">
 	<meta name="_csrf_header" content="${_csrf.headerName}">
    <!-- bootstrap -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>

    <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <!-- css -->
    <link rel="stylesheet" href="/resources/css/mainSt.css" />
    <!-- <link rel="stylesheet" href="/resources/css/css/searchCateSt.css" /> -->
    <!-- <link rel="stylesheet" href="/resources/css/orderSt.css" /> -->
    <link rel="stylesheet" href="/resources/css/memSt.css" />
    <link rel="stylesheet" href="/resources/css/adminSt.css" />

    <title>WhatSub</title>
  </head>

  <body>
    <!-- ----------------------------------- content ----------------------------------- -->

    <div class="back-to-main">
      <a href="../main/main.html">
        <img src="../resources/images/mainlogo.png" alt="로고 이미지" />
      </a>
    </div>

    <div class="terms">
      <div class="termsTitle">
        <h4>회원가입</h4>
        <div class="line"></div>
        <p>환영합니다 고객님!</p>
        <p><span class="notNull">*</span>은 필수 입력입니다. 빠짐없이 입력하여주세요.</p>
      </div>
    </div>

    <div class="join">
      <form name="join" method="post" action="" id="myInfoEdit" onsubmit="return check();">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token }"/>
        <div class="myInfoEdit">
          <div class="idPw">
            <label>ID <span class="notNull">*</span></label>
            <div class="msg">
              <input
                class="w3-input form-control"
                type="text"
                id="user_id"
                name="user_id"
                placeholder="아이디를 입력해주세요"
              />
              <p id="idmsg"></p>
            </div>
            <label>PASSWORD <span class="notNull">*</span></label>
            <div class="msg">
              <input
                class="w3-input form-control"
                type="password"
                id="user_pw"
                name="user_pw"
                placeholder="비밀번호를 입력해주세요"
              />
              <p id="pwmsg"></p>
            </div>
            <label>PASSWORD 확인 <span class="notNull">*</span></label>
            <div class="msg">
              <input
                class="w3-input form-control"
                type="password"
                id="user_pw2"
                name="user_pw2"
                placeholder="비밀번호를 확인해주세요"
              />
              <p id="pwmsg"></p>
            </div>
          </div>

          <div class="memInfo">
            <label>이름 <span class="notNull">*</span></label>
            <input
              class="w3-input form-control"
              type="text"
              id="user_name"
              name="user_name"
              placeholder="이름을 입력해주세요"
            />

            <label>주민번호 <span class="notNull">*</span></label>
            <div class="jumin">
              <input class="w3-input form-control" type="text" id="user_jumin1" name="user_jumin1" placeholder="020725" />
              <p>-</p>
              <input
                class="w3-input form-control"
                type="password"
                id="user_jumin2"
                name="user_jumin2"
                placeholder="3000000"
              />
            </div>

            <label>주소 <span class="notNull">*</span></label>
            <div class="postNum">
              <input
                class="w3-input form-control"
                type="text"
                id="user_address1"
                name="user_address1"
                placeholder="우편번호를 입력해주세요"
              />
              <button type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
            </div>
            <input
              class="w3-input form-control"
              type="text"
              id="user_address2"
              name="user_address2"
              placeholder="기본주소를 입력해주세요"
            />
            <input
              class="w3-input form-control"
              type="text"
              id="user_address3"
              name="user_address3"
              placeholder="상세주소를 입력해주세요"
            />

            <label>전화번호 <span class="notNull">*</span></label>
            <div class="phone">
              <input class="w3-input form-control" type="text" id="user_phone1" name="user_phone1" placeholder="010" />
              <p>-</p>
              <input class="w3-input form-control" type="text" id="user_phone2" name="user_phone2" placeholder="0725" />
              <p>-</p>
              <input class="w3-input form-control" type="text" id="user_phone3" name="user_phone3" placeholder="0728" />
            </div>
          </div>

          <div class="memEmail">
            <label>이메일 <span class="notNull">*</span></label>
            <div class="email">
              <input
                class="w3-input form-control"
                type="text"
                id="user_email1"
                name="user_email1"
                placeholder="michilover"
              />
              <p>@</p>
              <input
                class="w3-input form-control"
                type="text"
                id="user_email2"
                name="user_email2"
                placeholder="whatsub.com"
              />
              <button type="button" class="btn_email" id="btn_email">인증번호 전송</button>
            </div>
            <div class="email-ok">
              <input
                class="w3-input form-control"
                type="text"
                disabled="disabled"
                id="email_chk"
                name="num"
                placeholder="인증번호를 입력해주세요"
              />
              <button type="button" id="btn-auth">인증번호 확인</button>
            </div>
          </div>
        </div>

        <div class="btn-wrap">
          <input type="reset" value="다시쓰기" class="btn_reset" />
          <input type="submit" value="저장하기" class="btn_ok" />
        </div>
      </form>
    </div>

    <script>
      function check() {
        if (join.user_id.value == "") {
          alert("아이디를 입력해주세요.");
          join.user_id.focus();
          return false;
        }
        if (join.user_pw.value == "") {
          alert("비밀번호를 입력해주세요.");
          join.user_pw.focus();
          return false;
        }
        if (join.user_pw2.value == "") {
          alert("비밀번호를 확인해주세요.");
          join.user_pw2.focus();
          return false;
        }
        if (join.user_name.value == "") {
          alert("이름을 입력해주세요.");
          join.user_name.focus();
          return false;
        }
        if (join.user_jumin1.value == "") {
          alert("주민번호를 입력해주세요.");
          join.user_jumin1.focus();
          return false;
        }
        if (join.user_jumin2.value == "") {
            alert("주민번호를 입력해주세요.");
            join.user_jumin2.focus();
            return false;
          }
        if (join.user_address1.value == "") {
          alert("주소를 입력해주세요.");
          join.user_address1.focus();
          return false;
        }
        if (join.user_address2.value == "") {
            alert("주소를 입력해주세요.");
            join.user_address2.focus();
            return false;
          }
        if (join.user_address3.value == "") {
            alert("주소를 입력해주세요.");
            join.user_address3.focus();
            return false;
          }
        if (join.user_email1.value == "") {
          alert("이메일을 입력해주세요.");
          join.user_email1.focus();
          return false;
        }
        if (join.user_email2.value == "") {
            alert("이메일을 입력해주세요.");
            join.user_email2.focus();
            return false;
          }
        if (join.email_chk.value == "") {
          alert("이메일을 인증해주세요.");
          join.email_chk.focus();
          return false;
        }
        return true;
      } //
      
     /*  function checkLoginId(){
     		const form = document.getElementById("join");
     		form.user_id.readonly = false;
     		const user_id = document.querySelector('#join input[name="user_id"]'); //== $("#member input[name='username']")
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
     	} //
     	
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
       	}//fn.getJson */
    </script>
    
    <script>
   
   var token = $("meta[name='_csrf']").attr("content");
   var header = $("meta[name='_csrf_header']").attr("content");
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
       
       	$("#user_id").blur(function(){
       		if(!$("#user_id").val()){
       			$("#idmsg").html("<span style='color:#f00;'>아이디는 필수 입력사항입니다</span>");
       		}else{
       			$("#idmsg").html("");
       		}
       		/* id 중복 확인 */
            $.ajax({
               type:'post',
               url:'member-count',
               data:{id:$("#user_id").val()},
               beforeSend: function(xhr){
          			xhr.setRequestHeader(header, token);
          		},
              success:function(data){
                 if(data != 1){
                    if($("#user_id").val() != null){
                       $("#idmsg").html("<span style='color:#008000; margin-left:6px; font-size:10px;'>使用可能なIDです。</span>");
                    }
                 } else {
                    if($("#user_id").val() != ""){
                       $("#idmsg").html("<span style='color:#f00; margin-left:6px; font-size:10px;'>すでに存在するIDです。他のIDをお使いください。</span>");
                       $("#user_id").val("");
                       $("#user_id").focus();
                    }
                 }
              }, error:function(xhr, status, error){
                 alert("通信エラー!");
              }
            })   
       	})
                 	
       	$("#btn_email").on("click", function(){
			var email = $("#user_email1").val()+'@'+$("#user_email2").val();
			$.ajax({
				type:'get',
				url:"/mail.do?mail="+email,
				success:function(data){
					alert("메일전송 완료")
					code = data;
					$("#email_chk").attr("disabled",false);
					$("#email_chk").css("background","#fff");
				}
			}) // ajax end
       	}) 
       	
       	$("#btn-auth").on("click",function(){
			incode = $("#email_chk").val();
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
    <!-- ----------------------------------- content 끝 ----------------------------------- -->
    <%@ include file="../main/footer.jsp"%>
  </body>
</html>
