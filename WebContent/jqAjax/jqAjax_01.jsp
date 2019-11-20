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
			// console.log("Clicked!")

			var n1 = $("#num1").val();
			var n2 = $("#num2").val();
			var op = $("#oper").val();

			//       console.log(n1 + ", " + n2 + ", " + op);

			// - - - 전달 파라미터 - - -

			//Plain Object
			var data = {
				"num1" : n1,
				"num2" : n2,
				"oper" : op
			};

			//String
			var query = "num1=" + n1 + "&num2=" + n2 + "&oper=" + op;

			//       console.log(data);
			//       console.log(query);

			// - - - - - - - - - - - - - 

			//요청 URL
			var url = "/jqAjax/jqAjax_ok.jsp"

			//.load()를 이용한 Ajax 요청
			//       $("#resultLayout").load(url, data); //POST전송

			//       $("#resultLayout").load(url, query); //GET전송

			//한번에 쓰기
			//       $("#resultLayout").load(
			//             "/jqAjax/jqAjax_ok.jsp", { 
			//                "num1" : $("#num1").val()
			//                , "num2" :  $("#num2").val()
			//                , "oper" :  $("#oper").val() 
			//             }
			//       );

			//complete 매개변수 확인
			$("#resultLayout").load(url, data, complete);

			//       $("#resultLayout").load(url, data, function() {
			//          console.log(".load()함수 호출 완료")
			//       });

			//한번에 쓰기
			//       $("#resultLayout").load(
			//             "/jqAjax/jqAjax_ok.jsp", { 
			//                "num1" : $("#num1").val()
			//                , "num2" :  $("#num2").val()
			//                , "oper" :  $("#oper").val() 
			//             }
			//             , function() {
			//                console.log(".load()함수 호출 완료")
			//             }
			//       );

		});
	});

	function complete(responseText, textStatus, jqXHR) {

		console.log("complete() called")
		console.log(".load()를 이용한 Ajax요청에 대한 응답이 잘 이루어졌음")

		console.log("---responseText---");
		console.log(responseText);

		console.log("---textStatus---");
		console.log(textStatus);

		console.log("---jqXHR---")
		console.log(jqXHR);

	}
</script>
</head>

</head>
<body>
	<h1>💙JQuery 계산기01💙</h1>
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