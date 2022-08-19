package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/set")
public class SetAttribute extends HttpServlet {

	public void init() throws ServletException {
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		//context=application(첫째큰 scope)는 인터넷 실행 브라우저 바껴도 됨
		String ctxMesg = "context에 바인딩됩니다.";
		//session(둘째큰 scope)는 인터넷 실행 브라우저 바뀌면 안됨,같은 브라우저 새로운창됨
		String sesMesg = "session에 바인딩됩니다.";
		//request(셋째큰 scope)는 같은 브라우저 새로운창 안됨
		String reqMesg = "request에 바인딩됩니다.";
		
		ServletContext ctx = getServletContext();
		HttpSession session = request.getSession();
		ctx.setAttribute("context", ctxMesg);
		session.setAttribute("session", sesMesg);
		request.setAttribute("request", reqMesg);
		out.print("바인딩을 수행합니다.");
	}

}
