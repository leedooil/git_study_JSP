<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp" method="post">
		<%-- 다운로드할 파일 이름을 매개변수로 전달. 파일명 일치해야함 --%>
		<input type="hidden" name="param1" value="dog1.jpg" /><br>
		<input type="hidden" name="param2" value="dog3.jpg" /><br>
		<input type="submit" value="이미지 다운로드">
	</form>
</body>
</html>