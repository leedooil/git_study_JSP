<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script>
	$(function () {
		$("#checkJson").click(function () {
			var jsonStr = '{"name":"박지성","age":25,"gender":"남자","nickname":"날센돌이"}';
			var jsonObj = JSON.parse(jsonStr);
			var output = "회원 정보<br>";
			output += "===========<br>";
				output += "이름: " + jsonObj.name + "<br>";
				output += "나이: " + jsonObj.age + "<br>";
				output += "성별: " + jsonObj.gender + "<br>";
				output += "별명: " + jsonObj.nickname + "<br>";
			}
			$("#output").html(output);
		})
	})
</script>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" id="checkJson" value="회원정보출력" ><br><br>
	<div id="output"></div>
</body>
</html>