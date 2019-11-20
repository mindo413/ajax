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
	function helloToServer() {
		// console.log("helloToServer() : button Clicked")

		var params = "name=" + document.f.name.value;

		// AJAX 요청
		sendRequest("POST", "/ajax/ajax_03_ok.jsp", params, helloFromServer);
	}
	
	function helloFromServer(){ // 서버로부터 AJAX응답받는 함수
		if(httpRequest.readyState == 4){ // XHR DONE
			if(httpRequest.status == 200){ // 200 ,OK
				console.log("서버응답 : " + httpRequest.responseText);
			}
		}
	}
</script>

</head>
<body>
	<h1>ajax 03</h1>
	<hr>

	<form name="f">
		<input type="text" name="name" />
		<button type="button" onclick="helloToServer();">입력</button>
	</form>
</body>
</html>