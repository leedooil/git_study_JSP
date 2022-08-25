<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>   
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자로그인하기</title>
</head>
<body>
	<c:if test="${empty param.userID}">
		아이디를 입력하세요.<br>
		<a href="${contextPath}/test01/login.jsp">로그인창</a>
	</c:if>
	<c:if test="${not empty param.userID}">
		<c:if test="${param.userID == 'admin'}">
			<h1>관리자로 로그인 했습니다.</h1>
			<form action="">
				<input type="button" value="회원정보 삭제하기">
				<input type="button" value="회원정보 수정하기">
			</form>
		</c:if>
		<c:if test="${param.userID != 'admin'}">
			<h1>환영합니다. <c:out value="${param.userID}" />님!!!</h1>
		</c:if>
	</c:if>
</body>
</html>