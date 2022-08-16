package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login2")
public class LoginServlet2 extends HttpServlet {

	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}

	public void destroy() {
		System.out.println("destroy 메서드 호출");
	} // WAS(톰캣)에서 요청받고 클라이언트로 응답해준다
		// 요청은 HttpServletRequest객체 응답은 HttpServletResponse객체 사용

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 웹 브라우저에서 전송된 데이터의 인코딩을 utf-8로 설정
		request.setCharacterEncoding("utf-8");
		// setContentType()를 사용해 응답할 데이터 종류가 HTML임을 설정
		response.setContentType("text/html;charset=utf-8");
		// HttpServletResponse 객체의 getWriter()를 이용해 출력 스트림 PrintWriter객체를 받아옴
		PrintWriter out = response.getWriter();
		String id = request.getParameter("user_id");
		String pw = request.getParameter("user_pw");
		//브라우저로 출력할 데이터를 문자열로 연결해서 HTML 태그로 만들어줍니다
		String data = "<html>";
			data += "<body>";
			data += "아이디 : " + id;
			data += "<br>";
			data += "패스워드 : " + pw;
			data += "</html>";
			data += "</body>";
			//PrintWriter객체의 print()를 이용해 HTML 태그 문자열을 웹 브라우저로 출력
			out.print(data);
	}

}
