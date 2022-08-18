package sec02.ex01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/set")
public class SetCookieValue extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		Date d = new Date();
		//Cookie 객체를 생성한 후 cookieTest 이름으로 한글 정보를 인코딩해서 쿠키에 저장
		Cookie c = new Cookie("cookieTest", URLEncoder.encode("JSP프로그래밍입니다.","utf-8"));
		//유효기간 설정. 쇼핑몰이나 은행어플에서 자동로그인 자동로그아웃 기능구현할때 사용
//		c.setMaxAge(24*60*60);
		c.setMaxAge(-1); // 유효 시간을 음수로 지정하여 Session쿠키를 생성
		//생성된 쿠키를 브라우저로 전송
		response.addCookie(c);
		out.println("현재시간 : "+d);
		out.println("현재시간을 Cookie로 저장합니다.");
	}

}
