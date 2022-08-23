<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- %!는 선언문 -->
    <%!
    	String name = "이두일";
    	public String getName(){return name;}
    %>
    
    <!-- %는 구현문 -->
    <%
    	String age=request.getParameter("age");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 연습</title>
</head>
<body>
	
    <!-- %=는 표현문 -->
	<h1>안녕하세요 <%=name %>님!!</h1>
	<h1>나이는 <%=age %>살입니다!!</h1>
	<h1>키는 <%=188 %>cm입니다!!</h1>
	<h1>나이+10은 <%=Integer.parseInt(age)+10 %>살입니다!!</h1>
</body>
</html>