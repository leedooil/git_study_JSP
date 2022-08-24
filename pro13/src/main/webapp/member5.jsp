<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%-- 유즈빈 액션 태그로 id가 m인 MemberBean 객체 생성 --%>
<jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page"></jsp:useBean>
<%-- 전달받은 매개변수 이름이 일치하는 useBean 속성이 있으면 자동으로 property를 설정 --%>
<jsp:setProperty property="id" name="m"/>
<jsp:setProperty property="pwd" name="m"/>
<jsp:setProperty property="name" name="m"/>
<jsp:setProperty property="email" name="m"/>
<%
	MemberDAO memberDAO = new MemberDAO();
	//리턴 명령어로 값을 안던져 줬으니 호출된 부분으로 다시 돌아옴
	memberDAO.addMember(m);
	List membersList = memberDAO.listMembers();
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록창</title>
</head>
<body>
	<table align="center" width="100%">
		<tr align="center" bgcolor="#99ccff">
			<td width="7%">아이디</td>
			<td width="7%">비밀번호</td>
			<td width="5%">이름</td>
			<td width="11%">이메일</td>
			<td width="5%">가입일</td>
		</tr>
		<%
			if(membersList.size()==0){
		%>
		<tr>
			<td colspan="5"><p align="center"><b><span style="font-size: 9pt;">등록된 회원이 없습니다.</span></b></p></td>		
		</tr>
	   <%
			}else{
				for(int i = 0; i < membersList.size(); i++){
						MemberBean bean = (MemberBean) membersList.get(i);
		%>
		<tr align="center">
			<td><%=bean.getId()%></td>
			<td><%=bean.getPwd()%></td>
			<td><%=bean.getName()%></td>
			<td><%=bean.getEmail()%></td>
			<td><%=bean.getJoinDate()%></td>
		</tr>
		<%
				}	
			}
		%>
	</table>
</body>
</html>