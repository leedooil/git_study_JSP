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
<c:set var="name" value="${'이두일'}" scope="page"></c:set>    
<c:set var="age" value="${22}" scope="page"></c:set>    
<c:set var="height" value="${177}" scope="page"></c:set>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조건문 실습</title>
</head>
<body>
	<!-- core if문 태그 사용시 test는 바뀌면 안됨 -->
	<c:if test="${true}"> 							<!-- 조건식이 true라서 항상참 -->
		<h1>항상 참입니다.</h1>
	</c:if>
	<!-- core if문 태그 사용시 test는 바뀌면 안됨 -->
	<c:if test="${11==11}">							<!-- 조건식에 비교연산자 사용가능 -->
		<h1>두 값은 같습니다.</h1>
	</c:if>
	<!-- core if문 태그 사용시 test는 바뀌면 안됨 -->
	<c:if test="${11!=31}">							<!-- 조건식에 비교연산자 사용가능 -->
		<h1>두 값은 같지 않습니다.</h1>
	</c:if>
	<!-- String형은 표현식 안에서 무조건 ''사용? -->
	<c:if test="${(id=='lee') && (name=='이두일')}">	<!-- 조건식에 논리연산자 사용가능 --> 
		<h1>아이디는 ${id}이고, 이름은 ${name}입니다.</h1>
	</c:if>
	<!-- core if문 태그 사용시 test는 바뀌면 안됨 -->
	<c:if test="${age==22}">
		<h1>${name}의 나이는 ${age}살입니다.</h1>
	</c:if>
	<!-- core if문 태그 사용시 test는 바뀌면 안됨 -->
	<c:if test="${height>170}">
		<h1>${name}의 키는 170보다 큽니다.</h1>
	</c:if>
</body>
</html>