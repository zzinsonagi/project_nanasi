<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
   <div class="memberterms">
     <h2>約款</h2>
     <form name="my" method="post" action="member.do">
     <input type="hidden" name="check" value="${alpa}">
     <input type="checkbox" class="agreeall" name="chkctrl" id="chkctrl" value="t">
    利用約款にすべて同意します
     <textarea>
제1조(목적)

본 약관은 ㈜시사일본어학원(이하 “회사”라 합니다)가 웹사이트(http://www.japansisa.com/)를 통하여 제공하는 교육정보서비스(이하 “서비스”라 합니다)의 이용과 관련하여 회사와 회원 사이에 권리ㆍ의무 및 책임사항 등을 규정함을 목적으로 합니다.



제2조(약관의 효력과 변경)

(1) 이 약관의 내용과 변경 사항은 회사의 홈페이지의 온라인 문서상에 게시하거나 기타의 방법으로 이용자에게 공시함으로써 효력을 발생합니다.

(2) 회사는 정책의 변경이나 운영상의 중요 사유가 있을 때 약관을 변경할 수 있으며, 변경된 약관은제1항과 같은 방법으로 효력을 발생합니다.

(3) 약관의 내용이 변경, 삭제 또는 추가될 경우 회사는 지체 없이 서비스의 공지사항을 통하여 이용자에게 공지합니다.



제3조(약관 외 준칙) 

이 약관에 명시되지 않은 사항에 대해서는 관계법령의 규정 및 서비스 이용안내에 따릅니다.

     </textarea>
     <input type="checkbox" name="agree" id="agree1" value="t" onclick="check()">
    利用約款にすべて同意します
     <textarea>제1조(목적)

본 약관은 ㈜시사일본어학원(이하 “회사”라 합니다)가 웹사이트(http://www.japansisa.com/)를 통하여 제공하는 교육정보서비스(이하 “서비스”라 합니다)의 이용과 관련하여 회사와 회원 사이에 권리ㆍ의무 및 책임사항 등을 규정함을 목적으로 합니다.



제2조(약관의 효력과 변경)

(1) 이 약관의 내용과 변경 사항은 회사의 홈페이지의 온라인 문서상에 게시하거나 기타의 방법으로 이용자에게 공시함으로써 효력을 발생합니다.

(2) 회사는 정책의 변경이나 운영상의 중요 사유가 있을 때 약관을 변경할 수 있으며, 변경된 약관은제1항과 같은 방법으로 효력을 발생합니다.

(3) 약관의 내용이 변경, 삭제 또는 추가될 경우 회사는 지체 없이 서비스의 공지사항을 통하여 이용자에게 공지합니다.



제3조(약관 외 준칙) 

이 약관에 명시되지 않은 사항에 대해서는 관계법령의 규정 및 서비스 이용안내에 따릅니다.
     </textarea>
     <input type="checkbox" name="agree" id="agree2" value="t" onclick="check()">
     個人情報の収集及び利用に同意
     
     <textarea>제1조(목적)

본 약관은 ㈜시사일본어학원(이하 “회사”라 합니다)가 웹사이트(http://www.japansisa.com/)를 통하여 제공하는 교육정보서비스(이하 “서비스”라 합니다)의 이용과 관련하여 회사와 회원 사이에 권리ㆍ의무 및 책임사항 등을 규정함을 목적으로 합니다.



제2조(약관의 효력과 변경)

(1) 이 약관의 내용과 변경 사항은 회사의 홈페이지의 온라인 문서상에 게시하거나 기타의 방법으로 이용자에게 공시함으로써 효력을 발생합니다.

(2) 회사는 정책의 변경이나 운영상의 중요 사유가 있을 때 약관을 변경할 수 있으며, 변경된 약관은제1항과 같은 방법으로 효력을 발생합니다.

(3) 약관의 내용이 변경, 삭제 또는 추가될 경우 회사는 지체 없이 서비스의 공지사항을 통하여 이용자에게 공지합니다.
test



제3조(약관 외 준칙) 

이 약관에 명시되지 않은 사항에 대해서는 관계법령의 규정 및 서비스 이용안내에 따릅니다.
     </textarea>
     <input type="checkbox" name="agree" id="agree3" value="t" onclick="check()">
     位置情報利用約款に同意
     <div class="btnbox">
        <input type="button" class="btn submit btn_ok" id="btn_ok" value="등록">
        <input type="button" class="btn reset" value="취소" onclick="javascript:history.go(-1)">
     </div>
     </form>
     </div>
   </div>
   <!-- end contents -->
   
   
   <script>
      $(function() {
         var chklist = $("input[name=agree]");
         //input 태그 네임이 agreee인 3개 태그를 chklist 변수에 담는다
         $("#chkctrl").click(function() {
            //id이름이 chkctrl을 클릭했을때
            if($(this).is(":checked")) {
               //자기자신이 체크상태이면
               chklist.prop("checked",true);
               //chlist에 담겨진 모든 태그를 체크 상태로 변경
            }else{
               chklist.prop("checked", false);
               //attr() 함수는 html에 작성돤 속성값을 문자열로 받아오고
               //prop() 함수는 자바스크립트의 프로퍼티를 가져온다
            }
         })
         
         $("#agree1, #agree2, #agree3").on("click", function() {
            if($("#agree1").is(":checked") == true 
                  && $("#agree2").is(":checked") == true 
                     && $("#agree3").is(":checked") == true) {
               $("#chkctrl").prop("checked", true);
            }else{
               $("#chkctrl").prop("checked", false);
            }
         })
         
         $("#btn_ok").on("click", function() {
            var chk = true;
            for(var i=0; i < chklist.length ; i++) {
               if(!chklist[i].checked) {
                  chk = false
               }
            }
            if(!chk) {
               alert("모든 약관에 동의해 주세요");
               return false;
            }else{
				my.submit();
            }
         })
         
      }) //
   
   </script>
</body>
</html>