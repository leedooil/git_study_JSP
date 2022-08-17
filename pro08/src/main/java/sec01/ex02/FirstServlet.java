package sec01.ex02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/first") 다 끝난 실습은 맵핑을 주석처리해주자 중복방지 젤중요
public class FirstServlet extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		response.addHeader("Refresh","1;url=second");
		//웹 브라우저에 1초 후 서블릿 second로 재요청
	}

}
