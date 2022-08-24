<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sec01.ex01.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<%-- 유즈빈 액션 태그로 id가 m인 MemberBean 객체 생성 --%>
<jsp:useBean id="m" class="sec01.ex01.MemberBean" scope="page"></jsp:useBean>
<%-- 앞에서 받은 매개변수를 동일한 이름의 유즈빈 속성에 전송 그후 property로 꺼내 쓴다. 제일 정성적인방법  --%>
<jsp:setProperty property="id" name="m" value='<%=request.getParameter("id") %>'/>
<jsp:setProperty property="pwd" name="m" value='<%=request.getParameter("pwd") %>'/>
<jsp:setProperty property="name" name="m" value='<%=request.getParameter("name") %>'/>
<jsp:setProperty property="email" name="m" value='<%=request.getParameter("email") %>'/>
<%
	//String id = request.getParameter("id");
	//String pwd = request.getParameter("pwd");
	//String name = request.getParameter("name");
	//String email = request.getParameter("email");
	//자바 코드로 객체 생성하는 것을 자바빈이라고 함
	//위에서 유즈빈으로 객체 생성했으니 따로 자바코드로 자바빈 객체 생성안함
	//MemberBean m = new MemberBean(id,pwd,name,email);
	//useBean에 전성된 회원 정보를 설정
	//m.setId(id);
	//m.setPwd(pwd);
	//m.setName(name);
	//m.setEmail(email);
	
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