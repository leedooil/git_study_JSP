package sec01.ex03;

import java.io.IOException;
import java.io.PrintWriter;

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
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		//자바스크립트 location의 href속성에 서블릿 second를 설정해 재요청(location은 자바스크립트용)
		out.print("<script type='text/javascript'>");
		out.print("location.href='second';");
		out.print("</script>");
	}

}
