<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="m" class="sec01.ex02.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="m"/>
<jsp:useBean id="addr" class="sec01.ex02.Address"></jsp:useBean>
<%-- Address 빈을 생성한 후 도시와 우편번호를 설정 --%>
<jsp:setProperty property="city" name="addr" value="서울"/>    
<jsp:setProperty property="zipcode" name="addr" value="07654"/>
<%-- MemberBean의 addr 속성에 Addres 빈을 설정 --%>
<% m.setAddr(addr); %>    
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
			<td width="7%"><b>도시</b></td>
			<td width="7%"><b>우편번호</b></td>
		</tr>
		<tr align="center">
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>
			<!-- 속성들을 getter로 두번 호출해서 주소와 우편번호 출력(표현식 사용법) -->
			<td><%=m.getAddr().getCity() %></td>
			<td><%=m.getAddr().getZipcode() %></td>
		</tr>
		<tr align="center">
			<td>${m.id}</td>
			<td>${m.pwd}</td>
			<td>${m.name}</td>
			<td>${m.email}</td>
			<!-- 자바빈 속성 이름과 .연산자를 이용해 주소와 우편번호 출력(표현언어 사용법) -->
			<!-- 
				속성이름으로 바로 호출했다고 생각하면 안되고 원래는 getter로 호출하는 건데
				간단하고 편리하라고 속성이름으로 호출하는 것.
			 -->
			<td>${m.addr.city}</td>
			<td>${m.addr.zipcode}</td>
		</tr>
	</table>
</body>
</html>