<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
    	request.setCharacterEncoding("utf-8");
    	int dan = Integer.parseInt(request.getParameter("dan"));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	for(int i=1;i<=dan;i++){
%>
	<table border='1' width='800'>
		<tr align="center" bgcolor="green">
			<td colspan="2"><%= i %>단 출력</td>
		</tr>
		<%
			for(int j=1;j<10;j++){
		%>
		<%
			if(i%2==1){
		%>
		<tr align="center" bgcolor="#CCFF66">
			<td width="400"><%=i %> X <%=j %></td>
			<td width="400"><%=i*j %></td>
		</tr>
		<%
			}else{
		%>
		<tr align="center" bgcolor="#CCCCFF">
			<td width="400"><%=i %> X <%=j %></td>
			<td width="400"><%=i*j %></td>
		</tr>
		<%
			}
			}
	}
		%>
	</table>
</body>
</html>