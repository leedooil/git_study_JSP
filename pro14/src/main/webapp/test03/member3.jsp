<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core태그 라이브러리 사용하기 전에 설정해줘야함 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="id" value="lee" scope="page"></c:set>
<c:set var="pwd" value="1234" scope="page"></c:set>
<c:set var="name" value="${'이두일'}" scope="page"></c:set>
<c:set var="age" value="${22}" scope="page"></c:set>
<c:set var="height" value="${177}" scope="page"></c:set>
<!-- remove태그 사용으로 삭제한 변수들은 null값이 들어가 틀은 유지 하되 아무 값도 출력안됨 -->
<c:remove var="age"/>
<c:remove var="height"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightblue">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>나이</b></td>
			<td width="7%"><b>키</b></td>
		</tr>
		<tr align="center">
			<td>${id}</td> 		<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${pwd}</td> 	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${name}</td>	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${age}</td> 	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${height}</td> 	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
		</tr>
	</table>
</body>
</html>