<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>      
<!DOCTYPE html>
<html>
<head>
<%-- 다운로드할 파일 이름을 가져옿 --%>
<c:set var="file1" value="${param.param1}"></c:set>
<c:set var="file2" value="${param.param2}"></c:set>
<meta charset="UTF-8">
<title>이미지 파일 출력하기</title>
</head>
<body>
	매개변수 1 : <c:out value="${file1}" /><br>
	매개변수 2 : <c:out value="${file2}" /><br>
	<c:if test="${not empty file1}">
		<%-- 파일 이름으로 서블릿에서 이미지 다운로드해 표시 --%>
		<img src="${contextPath}/download.do?fileName=${file1}" width="300" height="300" /><br>
	</c:if>
	<br>
	<c:if test="${not empty file2}">
		<img src="${contextPath}/download.do?fileName=${file2}" width="300" height="300" /><br>
	</c:if>
	파일 내려받기 : <br>
	<%-- img 태그와 달리 a href 태그 쓰면 이미지를 파일로 다운로드?? --%>
	<a href="${contextPath}/download.do?fileName=${file2}">파일 내려받기</a><br>
</body>
</html>