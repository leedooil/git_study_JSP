<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- core태그 라이브러리 사용하기 전에 설정해줘야함 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- scope page 걸어준게 page 벗어나면 값을 잃게 하기위함 -->
<c:set var="id" value="lee" scope="page"></c:set>    
<c:set var="pwd" value="1234" scope="page"></c:set>    
<%-- <c:set var="name" value="${'이두일'}" scope="page"></c:set> --%>    
<c:set var="age" value="${22}" scope="page"></c:set>    
<c:set var="height" value="${177}" scope="page"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>choose는 switch랑 같다</title>
</head>
<body>
	<table align="center" border="1">
		<c:choose>
			<c:when test="${empty name}">
				<tr align="center" bgcolor="lightblue">
					<td width="7%"><b>아이디</b></td>
					<td width="7%"><b>비밀번호</b></td>
					<td width="7%"><b>이름</b></td>
					<td width="7%"><b>나이</b></td>
					<td width="7%"><b>키</b></td>
				</tr>
				<tr align="center">
					<td colspan="5">이름을 입력하세요!!</td>
				</tr>
			</c:when>
			<c:otherwise>
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
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>