<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>  
<!-- c:set 태그를 이용해 pageContext 내장 객체의 컨텍스트 이름을 변수 contextPath에 미리 설정합니다. -->
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
</head>
<body>
	<form action="result2.jsp" method="post">
		아이디 : <input type="text" name="userID" size="20" /><br>
		비밀번호 : <input type="password" name="userPw" size="20" /><br>
		<input type="submit" value="로그인" /><input type="reset" value="다시입력" />
	</form>
	<br><br>
	<%--
	<a href="${pageContext.request.contextPath}/memberForm.jsp">회원가입하기</a>
	--%>
	
	<!-- 
	   	 긴 내장 객체 속성을 사용할 필요없이 간단한 변수 이름으로 컨텍스트 이름을 설정
		 위 방법 보다 밑에 방법이 더 안정적인 방법이다.
	 -->
	<a href="${contextPath}/test03/memberForm.jsp">회원가입하기</a>
</body>
</html>