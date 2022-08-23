<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- %!는 선언문 -->
    <%!
    	String name = "이두일";
    	public String getName(){return name;}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언부 연습</title>
</head>
<body>
	<!-- %=는 표현문 -->
	<h1>안녕하세요 <%=name %>님!!</h1>
</body>
</html>