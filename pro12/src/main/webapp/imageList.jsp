<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 출력</title>
<style type="text/css">
	.lst_type{
		list-style: none;
	}
	
	ul li a{
		text-decoration: none;
		color: black;
	}
	
</style>
</head>
<body>
	<ul class="lst_type">
		<li>
			<span style="margin-left: 50px" >이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<%
		for(int i=0;i<10;i++){
		%>
		<li>
			<a href="#" style="margin-left: 50px" >
				<img alt="" src="image/dog1.jpg" width="90" height="90">
			</a>
			<a href="#"><strong>이미지 이름: 리트리버<%=i %> </strong></a>
			<a href="#"><input name="chk<%=i %>" type="checkbox" /></a>
		</li>
		<%
		}
		%>
	</ul>
</body>
</html>