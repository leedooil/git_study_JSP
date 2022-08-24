<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = request.getParameter("userID");
		if(userID.length()==0){
			/*
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response); 
			*/
//RequestDispatcher를 사용해 포워딩 하지 않아도 되지만 jsp액션태그 사용하는 것과 뭐가 더 좋은지는 우열을 가릴수없다.
	%>
		<jsp:forward page="login.jsp"></jsp:forward>	
	<%
		}
	%>
	<h1>환영합니다 <%= userID  %>님!!</h1>
</body>
</html>