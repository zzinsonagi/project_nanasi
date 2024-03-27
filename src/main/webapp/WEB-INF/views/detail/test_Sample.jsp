<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Image Change Test</title>
</head>
<body>
<div id="content" style="padding:30px; text-align:center;">
	<div id="bigImages" style="margin-bottom:10px;">
		<img id="big" src="/resources/images/1.png" style="width:310px; height:310px;">
	</div>
	<div id="smallImages">
		<img class="small" src="/resources/images/1.png" style="width:100px; height:100px;">
		<img class="small" src="/resources/images/2.jpg" style="width:100px; height:100px;">
		<img class="small" src="/resources/images/3.jpg" style="width:100px; height:100px;">
	</div>
</div>
<script>
	var bigPic = document.querySelector("#big");
	var smallPics = document.querySelectorAll(".small");
	
	for(var i = 0; i < smallPics.length; i++){
		smallPics[i].addEventListener("click", changepic);
	}
	
	function changepic(){
		var smallPicAttribute = this.getAttribute("src");
		bigPic.setAttribute("src", smallPicAttribute);
	}
</script>
</body>
</html>

