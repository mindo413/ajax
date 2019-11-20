<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
talbe tr {
	border: 1px solid #ccc;
}
</style>

<script type="text/javascript" src="/js/httpRequest.js">
	
</script>

<script type="text/javascript">
	window.onload = function() {
		var btnAction = document.getElementById("btnAction");

		btnAction.addEventListener("click", function() {
			// 			console.log("[JS] btnAction Clicked");

			// AJAX요청
			sendRequest("POST", "/ajax/test2", "", callback);
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

	function printData() {
		window.result.innerHTML = httpRequest.responseText;

	}
</script>
</head>
<body>
	<h1>AJAX 테스트2</h1>
	<hr>

	<button id="btnAction">AJAX 요청</button>

	<div id="result"></div>
</body>
</html>