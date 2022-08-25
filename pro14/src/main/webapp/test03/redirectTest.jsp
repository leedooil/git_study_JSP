<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:redirect 태그 이용한 실습</title>
</head>
<body>
	<!-- redirect할 페이지 설정 -->
	<c:redirect url="/test03/member1.jsp">
	<!-- 리다이렉트할 페이지로 전달할 매개변수 설정 -->
		<c:param name="id" value="${'hong'}"></c:param>
		<c:param name="pwd" value="${'1133'}"></c:param>
		<c:param name="name" value="${'홍길동'}"></c:param>
		<c:param name="age" value="${''}"></c:param>
		<c:param name="height" value="${''}"></c:param>
		<c:param name="email" value="${'hong@text.com'}"></c:param>
	</c:redirect>
</body>
</html>