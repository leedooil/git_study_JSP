package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/first") 매핑 이름 중복 피하기 위해 주석처리해준다
public class FirstServlet extends HttpServlet {

	public void init() throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		response.sendRedirect("second");
		//sendRedirect() 메서드를 이용해 웹 브라우저에게 다른 서블릿인 second로 재요청
	}

}
