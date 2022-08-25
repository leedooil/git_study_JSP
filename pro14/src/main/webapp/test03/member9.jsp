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
<title>회원정보받기</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightblue">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		<c:choose>
			<c:when test="${empty param.id}">
				<tr align="center">
					<td colspan="5">아이디를 입력하세요!!</td>
				</tr>
			</c:when>
			<c:otherwise>
				<tr align="center">
				<!-- parm.매개변수와 request.getParameter("매개변수")는 같다. -->
					<%	
						String id = request.getParameter("id");
	       			 %>
					<td><c:out value="<%= id  %>"></c:out></td>
					<td><c:out value="${param.pwd}"></c:out></td>
					<td><c:out value="${param.name}"></c:out></td>
					<td><c:out value="${param.email}"></c:out></td>
				</tr>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>