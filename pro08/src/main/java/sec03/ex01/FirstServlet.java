package sec03.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/first")
public class FirstServlet extends HttpServlet {

	public void init(ServletConfig config) throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		//GET 방식으로 데이터를 전달
		PrintWriter out = response.getWriter();
		//맵핑 이름이 second인 서블릿에서 name=leedooil을 전달해줘
		RequestDispatcher dispatch =request.getRequestDispatcher("second?name=leedooil");
		//forward는 페이지이동을 뜻함
		dispatch.forward(request, response);
		//GET방식으로 데이터를 전달해도 dispatch를 이용하면 웹 브라우저의 URL은 변경되지 않음
	}

}
