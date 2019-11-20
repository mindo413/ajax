<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("a").click(function() {
			
			// 클릭 이벤트가 발생한  <a>태그의 href속성의 url 값을
			// 이용하여 .load() 수행
			$(".right").load($(this).attr("href"));
			
			// 웹 페이지의 동적 수행을 멈추는 코드
			// <a>의 페이지 이동을 막는다
			return false;
		});
	});
</script>

<style type="text/css">
.left {
	float: left;
	width: 30%;
	height: 500px;
	background: #FF6666;
}

.right {
	float: right;
	width: 65%;
	height: 500px;
	background: #FFCCCC;
}
</style>

</head>
<body>
	<h1>AJAX 메뉴</h1>
	<hr>

	<input type="text" />
	<hr>

	<div class="left">
		<a href="/ajax/ajax_01.jsp">AJAX 01</a> 
		<a href="/ajax/ajax_02.jsp">AJAX02</a>
		<a href="/ajax/ajax_03.jsp">AJAX 03</a>
	</div>

	<div class="right"></div>
</body>
</html>