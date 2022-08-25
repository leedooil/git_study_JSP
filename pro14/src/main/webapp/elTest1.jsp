<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현 언어에서 사용되는 데이터들</title>
</head>
<body>
	<h1>표현 언어로 여러 가지 데이터 출력하기</h1>
	<h1>
		\${100}: ${100}<br>
		\${"안녕하세요"}: ${"안녕하세요"}<br>
		\${10+1}: ${10+1}<br>

		<!-- 숫자형문자열 + 숫자 = 자동으로 숫자로 변환하여 더함 가능 -->
		\${"10"+1}: ${"10"+1}<br>

		<!-- null + 숫자 = 가능 -->
		<%-- null 가능한데 빨간x표 떠서 주석처리해줌 --%>
		<%-- \${null+10}: ${null+10}<br> --%>

		<!-- 문자열 + 숫자 = 불가능 -->
		<%-- \${"안녕"+11}: ${"안녕"+11}<br> --%>

		<!-- 문자열 + 문자열 = 불가능 -->
		<%-- \${"hello"+"world"}: ${"hello"+"world"}<br> --%>
	</h1>
</body>
</html>