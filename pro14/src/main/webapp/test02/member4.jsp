<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("address", "수원시 팔달구");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
			<td width="7%"><b>주소</b></td>
		</tr>
		<tr align="center">
			<td>${id}</td>
			<td>${pwd}</td>
			<td>${name}</td>
			<td>${email}</td>
			<!-- *작은것부터 크기 순서*  -->
<!-- page=>request=>session=>application(contents) -->
<!-- 크기가 작을 수록 강력하다 그래서 session으로 바인딩 건 수원시 팔달구는
     앞서 request로 바인딩한 서울시 강남구한테 밀림 -->
			<td>${address}</td>
		</tr>
	</table>
</body>
</html>