<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    				<!-- core 태그 라이브러리 사용하기 위해 반드시 선언해야함 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!-- c:set 태그를 이용해 변수 선언. value 속성에는 표현 언어를 사용해 초기화 가능  -->
<c:set var="id" value="lee" scope="page"></c:set>    
<c:set var="pwd" value="1234" scope="page"></c:set>    
<c:set var="name" value="${'이두일'}" scope="page"></c:set>    
<c:set var="age" value="${22}" scope="page"></c:set>    
<c:set var="height" value="${177}" scope="page"></c:set>    
<c:set var="email" value="${''}" scope="page"></c:set>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<table align="center" border="1">
		<tr align="center" bgcolor="lightblue">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>나이</b></td>
			<td width="7%"><b>키</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		<tr align="center">
			<td>${id}</td> 		<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${pwd}</td> 	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${name}</td>	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${age}</td> 	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${height}</td> 	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
			<td>${email}</td> 	<!-- 표현언어로 변수에 바로 접근하여 값 출력 -->
		</tr>
		<!-- redirectTest페이지에서 쏴준 매개변수를 받을 틀을 만들어주고
			 param.매개변수로 값을 받아 처리한 후 다시 호출한 페이지로 쏴준다.
		 -->
		<tr align="center">
			<td>${param.id}</td>	
			<td>${param.pwd}</td>
			<td>${param.name}</td>
			<td>${param.age}</td>
			<td>${param.height}</td>
			<td>${param.email}</td>	
		</tr>
	</table>
</body>
</html>