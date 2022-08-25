<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*" isELIgnored="false"%>
<% request.setCharacterEncoding("utf-8"); %>
<%-- MemberBean클래스를 m1으로 사용할거야 --%>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean"></jsp:useBean>
<%-- setProperty: 회원가입창에서 전송된 회원정보를 빈 속성에 설정  --%>
<jsp:setProperty property="*" name="m1"/>
<%-- membersList로 ArrayList 객체 생성 --%>
<jsp:useBean id="membersList" class="java.util.ArrayList"></jsp:useBean>
<%
	//m2는 new예약어로 MemberBean객체를 직접생성해서 값을 직접쳐넣음
	MemberBean m2 = new MemberBean("son","1234","손흥민","son@test.com");
	//두 개의 MemberBean객체를 ArrayList에 저장 ? 배열에 저장해서 인덱스에 따라 꺼내쓰면 유지보수 용이
	membersList.add(m1);
	membersList.add(m2);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table border="1" align="center">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		<tr align="center">
			<!-- 인덱스 0이면 m1인데 m1은 setProperty 회원정보창에서 값을 받아 저장 -->
			<td>${membersList[0].id}</td>
			<td>${membersList[0].pwd}</td>
			<td>${membersList[0].name}</td>
			<td>${membersList[0].email}</td>
		</tr>
		<tr align="center">
			<!-- 인덱스 1이면 m2인데 m12은 회원정보창에서 값을 받지 않고 위에 직접 값을 쳐넣음 -->
			<td>${membersList[1].id}</td>
			<td>${membersList[1].pwd}</td>
			<td>${membersList[1].name}</td>
			<td>${membersList[1].email}</td>
		</tr>
	</table>
</body>
</html>