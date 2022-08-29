<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%=request.getContextPath() %>"></c:set>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#checkJson").click(function(){
			var _jsonInfo = '{"name":"박지성","age":"25","gender":"남자","nickname":"날센돌이"}';
			$.ajax({
				type:"post",
				async:false,
				url:"${contextPath}/json",
				data:{jsonInfo: _jsonInfo},
				success:function (data,textStatus){
					alert("성공이 발생했습니다.");
				},
				error:function(data,textStatus) {
					alert("에러가 발생했습니다.");
				},
				complete:function(data,textStatus){
					alert("완료가 발생했습니다.");
				}
			});
			});
		});
</script>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="button" value="출력" id="checkJson">
</body>
</html>