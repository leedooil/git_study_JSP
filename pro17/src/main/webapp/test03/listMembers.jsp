<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec02.ex02.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="<%= request.getContextPath() %>"></c:set> 
<!DOCTYPE html>
<html>
<head>
	<c:choose>
		<c:when test='${msg=="addMember" }'>
			<script type="text/javascript">
				window.onload = function () {
					alert("회원을 등록했습니다.");
				}
			</script>
		</c:when>
		<c:when test='${msg=="modified" }'>
			<script type="text/javascript">
				window.onload = function () {
					alert("회원 정보를 수정했습니다.");
				}
			</script>
		</c:when>
		<c:when test='${msg=="deleted" }'>
			<script type="text/javascript">
				window.onload = function () {
					alert("회원 정보를 삭제했습니다.");
				}
			</script>
		</c:when>
	</c:choose>
<meta charset="UTF-8">
<style type="text/css">
	.cls1{
		font-size: 40px;
		text-align: center;
		list-style: none;
	}
</style>
<title>회원 정보 출력창</title>
</head>
<body>
	<h2 align="center">회원정보</h2>
	<table align="center" width="100%" border="1px">
		<tr align="center" bgcolor="lightblue">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="11%">이메일</td>
			<td width="5%">가입일</td>
			<td width="5%">수정</td>
			<td width="5%">삭제</td>
		</tr>
	<c:choose>
		<c:when test="${membersList==null}">
			<tr>
				<td colspan="7"><p align="center"><b><span style="font-size: 9pt;">등록된 회원이 없습니다.</span></b></p></td>		
			</tr>
		</c:when>
		<c:when test="${membersList != null}">
			<c:forEach var="mem" items="${membersList}">
				<tr align="center">
					<td>${mem.id}</td>	
					<td>${mem.pwd}</td>	
					<td>${mem.name}</td>	
					<td>${mem.email}</td>	
					<td>${mem.joinDate}</td>
					<%-- <td><a href="${contextPath}/member/modMemberForm.do?id=${mem.id}">수정</a></td> --%>	
					<%-- <td><a href="${contextPath}/member/delMember.do?id=${mem.id}">삭제</a></td> --%>	
				</tr>
			</c:forEach>
		</c:when>
	</c:choose>
	</table>
	<div class="cls1">
		<%-- <a href="${contextPath}/member/memberForm.do"><p>회원 가입하기</p></a> --%>
	</div>
</body>
</html>