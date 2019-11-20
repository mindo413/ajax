<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/js/httpRequest.js">
	
</script>

<script type="text/javascript">
	window.onload = function() {
		var btnAction = document.getElementById("btnAction");

		btnAction.addEventListener("click", function() {
			// 			console.log("[JS] btnAction Clicked");

			// AJAX요청
			sendRequest("POST", "/ajax/test", "", callback);
		});
	};

	function callback() {
		// 		console.log("callback called");
		if (httpRequest.readyState == 4) { // XHR DONE.
			if (httpRequest.status == 200) { // HTTP OK.
			// console.log("정상적인 AJAX!");

				printData();
			}
		}
	}
	
	function printData(){
		var res = document.getElementById("result");
		
		var jsonText = httpRequest.responseText; // 응답 데이터 받기
		
// 		res.innerHTML += JSON.parse(jsonText) + "<br>"; // 응답 데이터 JSON 파싱, 언 마샬링
		
		var jsonObject = JSON.parse(jsonText); // 응답 데이터 JSON파싱, 언 마샬링
		
// 		console.log(jsonObject);	
		
// 		res.innerHTML += "<div>" + jsonObject.id + ":" + jsonObject.pw + "</div>";
		
// 		console.log(jsonObject.data);
		
// 		res.innerHTML += jsonObject.data + "<br>";
		
		var jsonList = JSON.parse(jsonText);
		
		console.log(jsonList); // test
		
		for (var i = 0; i < jsonList.length; i++) {
		res.innerHTML += "<div>" + jsonList[i].id + ":" + jsonList[i].pw + "</div>";			
		}
		
		
	}
</script>
</head>
<body>
	<h1>AJAX 테스트</h1>
	<hr>

	<button id="btnAction">AJAX 요청</button>

	<div id="result"></div>
</body>
</html>