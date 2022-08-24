<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include1.jsp</title>
</head>
<body>
	안녕하세요. 쇼핑몰 중심 JSP 시작입니다!!!
	<br>	<!-- dog_image.jsp를 동적으로 가져옴(포워딩한다) -->
	<jsp:include page="dog_image.jsp" flush="true">
		<!-- param 액션 태그를 이용해 dog_image.jsp로 이름과 파일 이름을 전달 -->
		<jsp:param value="리트리버" name="name"/>
		<jsp:param value="dog1.jpg" name="imgName"/>
	</jsp:include>
	<br>
	안녕하세요. 쇼핑몰 중심 JSP 끝 부분입니다.!!!
</body>
</html>