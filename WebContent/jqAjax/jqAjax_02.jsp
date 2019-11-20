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
		$("#btnCalc").on("click", function() {
			// 			console.log("btnCalc Clicked");

			var n1 = $("#num1").val();
			var n2 = $("#num2").val();
			var op = $("#oper").val();
			// 			console.log(n1 + "," + n2 + "," + op);

			// - - - 전달 파라미터 - - -

			// PlainObject
			var data = {
				"num1" : n1,
				"num2" : n2,
				"oper" : op
			};

			// String
			var query = "num1=" + n1 + "&num2=" + n2 + "&oper=" + op;

			// 			console.log(data);
			// 			console.log(query);

			// -------------------------

			// 요청 URL
			var url = "/jqAjax/jqAjax_ok.jsp"
			
			// Ajax 요청 보내기
// 			$.get(url,data,function(res){
// 				$("#resultLayout").html(res);
// 			});

			$.post(url,data,function(res){
				$("#resultLayout").html(res);
			});
		
		});
	});
	
	
</script>

</head>
<body>
	<h1>💚JQuery 계산기02💚</h1>
	<hr>

	<input type="text" id="num1" />
	<select id="oper">
		<option value="add">더하기</option>
		<option value="sub">빼기</option>
		<option value="mul">곱하기</option>
		<option value="div">나누기</option>
	</select>
	<br>

	<input type="text" id="num2" />
	<button id="btnCalc">=</button>
	<hr>

	<div id="resultLayout"></div>
</body>
</html>