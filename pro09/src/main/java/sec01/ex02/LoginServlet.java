package sec01.ex02;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}

	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_address = request.getParameter("user_address");
		String user_email = request.getParameter("user_email");
		String user_hp = request.getParameter("user_hp");
		
		String data="안녕하세요!<br>로그인하셨습니다.<br><br>";
		data+="아이디 : "+user_id;
		data+="<br>";
		data+="패스워드 : "+user_pw;
		data+="<br>";
		data+="주소 : "+user_address;
		data+="<br>";
		data+="email : "+user_email;
		data+="<br>";
		data+="휴대전화 : "+user_hp;
		data+="<br>";
		out.print(data);
		//복호화된 데이터를 다시 GET방식으로 한글 전송하기 위해 인코딩함(암호화)
		//hidden태그와 URL Rewriting의 문제점은 일일이 로그인 정보 보내줘야하고 GET방식이라 보안에 매우취약
		user_address=URLEncoder.encode(user_address, "utf-8");
		//<a>태그를 이용해 링크 클릭시 서블릿 second로 다시 로그인 정보 전송
		out.print("<a href='/pro09/second?user_id="+user_id+"&user_pw="+user_pw+
				"&user_address="+user_address+"'>두 번째 서블릿으로 보내기</a>");
		data="</body></html>";
		out.print(data);
	}

}
