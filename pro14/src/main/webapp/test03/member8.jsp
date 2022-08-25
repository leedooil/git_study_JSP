<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="sec01.ex01.*, java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%
 	request.setCharacterEncoding("utf-8");
 	List membersList = new ArrayList();
 	MemberBean m1 = new MemberBean("son","1234","손흥민","son@test.com");
 	MemberBean m2 = new MemberBean("ki","4321","기성용","ki@test.com");
 	MemberBean m3 = new MemberBean("park","1212","박지성","park@test.com");
 	//세명의 회원정보를 MemberBean에 저장한후 다시 ArrayList에 저장 
 	membersList.add(m1);
 	membersList.add(m2);
 	membersList.add(m3);
%> 
 
 <c:set var="membersList" value="<%=membersList %>"></c:set>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="lightblue">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		<c:forEach var="member" items="${membersList}">
		<tr align="center">
			<td>${member.id}</td>
			<td>${member.pwd}</td>
			<td>${member.name}</td>
			<td>${member.email}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>