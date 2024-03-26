<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="/resources/js/jquery-1.12.4.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
    
	
<title>결제창확인22222222</title>

<script>
		
	 		

	function requestPay() {
		
		var IMP = window.IMP; 
		IMP.init("imp25386871");
		
		const subNum = document.getElementById("sub_num").value;
	    const userId = document.getElementById("user_id").value;
	    const payName = document.getElementById("pay_name").value;
	    const payPrice = document.getElementById("pay_pay").value;
		
		IMP.request_pay({
			pg: "kcp",								
			pay_method: "card",						
			merchant_uid:"fdfasdgsdg",		// 실제 주문 번호로 변경
			name:payName,				// 상품 또는 서비스 명칭으로 변경
			amount: payPrice,			// 실제 결제 금액으로 변경
			buyer_tel:userId			// 구매자의 전화번호로 변경
		}, function (rsp) {
		    if (rsp.success) {
		      // 결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
		      // jQuery로 HTTP 요청
		      
		      $.ajax({
		        url: "/pay/insert", 
		        method: "POST",
		        headers: { "Content-Type": "application/json" },
		        data: JSON.stringify({
		          merchant_uid: rsp.merchant_uid,  	// 주문번호
		          name: rsp.name,   				// 상품이름
		          amount: payPrice,   				// 상품가격
		          buyer_tel: rsp.buyer_tel   		// 주문자전화번호
		        })
		      });
		      alert("결제에 성공하였습니다.");
		    } else {
		      alert("결제에 실패하였습니다. 에러 내용: " + rsp.error_msg);
		    }
		  });
	}
</script>

</head>
<body>

	<form name="portfolio" method="post" enctype="multipart/form-data" action="requestPay()">
		<table>
			<tr>
				<th>주문번호</th>
				<td><textarea name="sub_num" id="sub_num"></textarea></td>
			</tr>
			<tr>
				<th>아이디</th>
				<td><textarea name="user_id" id="user_id"></textarea></td>
			</tr>
			<tr>
				<th>상품이름</th>
				<td><textarea name="pay_name" id="pay_name"></textarea></td>
			</tr>
			<tr>
				<th>상품가격</th>
				<td><textarea name="pay_pay" id="pay_pay"></textarea></td>
			</tr>
		</table>
		
		<input type="submit" value="결제 하기">
	
		</form>
	
	<button onclick="requestPay()">결제하기</button>
</body>
</html>