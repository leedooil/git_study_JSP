<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="m1"/>
<%-- MemberBean 객체를 저장할 ArrayList 객체를 생성 --%>
<jsp:useBean id="membersList" class="java.util.ArrayList"></jsp:useBean>
<%-- 회원 정보를 저장할 HashMap 객체를 useBean 액션 태그를 이용해 생성 --%>
<jsp:useBean id="membersMap" class="java.util.HashMap"></jsp:useBean>    
<%
	//HashMap에 키,값 쌍으로 회원 정보를 저장
	membersMap.put("id","park2");
	membersMap.put("pwd","4321");
	membersMap.put("name","박지성");
	membersMap.put("email","park2@test.com");

	//m2는 new예약어로 MemberBean객체를 직접생성해서 값을 직접쳐넣음
	MemberBean m2 = new MemberBean("son","1234","손흥민","son@test.com");
	//두 개의 MemberBean객체를 ArrayList에 저장 ? 배열에 저장해서 인덱스에 따라 꺼내쓰면 유지보수 용이
	membersList.add(m1);
	membersList.add(m2);
	/* 
	   membersMap에 직접쳐넣은 키,값들이 각각 0~3인덱스 먹고 그뒤 membersList를 membersMap에 넣어주면 
	   membersList가 4인덱스를 먹음 그 4인덱스의 membersList에 다시 각각 m1과 m2가 0과 1 인덱스에
	   주소를 가지며 산다.
	*/
	membersMap.put("membersList",membersList);
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
			<td>${membersMap.id}</td>
			<td>${membersMap.pwd}</td>
			<td>${membersMap.name}</td>
			<td>${membersMap.email}</td>
		</tr>
		<tr align="center">
		<!-- HashMap에 저장된 ArrayList에 .으로 접근 후 다시 각각의 속성에
			 .을 이용해 접근하여 첫 번째 정보를 출력. 밑에 또한 마찬가지. 
			 인덱스 0이면 m1인데 m1은 setProperty 회원정보창에서 값을 받아 저장 -->
			<td>${membersMap.membersList[0].id}</td>
			<td>${membersMap.membersList[0].pwd}</td>
			<td>${membersMap.membersList[0].name}</td>
			<td>${membersMap.membersList[0].email}</td>
		</tr>
		<tr align="center">
			<!-- 인덱스 1이면 m2인데 m12은 회원정보창에서 값을 받지 않고 위에 직접 값을 쳐넣음 -->
			<td>${membersMap.membersList[1].id}</td>
			<td>${membersMap.membersList[1].pwd}</td>
			<td>${membersMap.membersList[1].name}</td>
			<td>${membersMap.membersList[1].email}</td>
		</tr>
	</table>
</body>
</html>