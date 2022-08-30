<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.cls1 {
		text-decoration: none;
	}
	
	.cls2 {
		text-align: center;
		font-size: 30px;
	}
</style>
<meta charset="UTF-8">
<title>게시판 글 목록</title>
</head>
<body>
	<table align="center" width="100%" border="1px">
		<tr align="center" bgcolor="lightblue">
			<td width="3%">글번호</td>
			<td width="3%">작성자</td>
			<td width="10%">제목</td>
			<!-- <td width="10%">이미지파일 이름</td> -->
			<td width="3%">작성일</td>
		</tr>
		<c:choose>
			<c:when test="${articlesList == null}">
				<tr height="10">
					<td colspan="5"><p align="center"><b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b></p></td>
				</tr>
			</c:when>
			<c:when test="${articlesList != null}">
				<c:forEach var="article" items="${articlesList}" varStatus="articleNum">
					<tr align="center">
						<td width="5%">${articleNum.count}</td>
						<td width="10%">${article.id}</td>
						<td width="35%" align="left">
							<span style="padding-right: 30px"></span>
							<c:choose>
								<c:when test='${article.level > 1}'>
									<c:forEach begin="1" end="${article.level}" step="1">
										<span style="padding-left: 20px"></span>
									</c:forEach>
									<span style="font-size: 12px;">${article.level}번[답변]</span>
									<a class="cls1" href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
								</c:when>
								<c:otherwise>
									<a class="cls1" href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
								</c:otherwise>
							</c:choose>
						</td>
						<td width="10%">${article.imageFileName}</td>
						<td width="10%"><fmt:formatDate value="${article.writeDate}"/></td>
					</tr>
				</c:forEach>
			</c:when>
		</c:choose>
	</table>
	<a class="cls1" href="${contextPath}/board/articleForm.do"><p class="cls2">글쓰기</p></a>
</body>
</html> --%>