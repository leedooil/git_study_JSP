package sec01.ex01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

							//HttpServlet 상속받음
public class FirstServlet extends HttpServlet {
	
	@Override		//브라우저의 요청을 처리
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet 메서드 호출");
	}

	@Override		//destroy()는 실행 안됨 garbage컬렉터에 의해서 나중에 삭제될 시 실행된다
	public void destroy() {
		System.out.println("destroy 메서드 호출");
	}

	@Override
	public void init() throws ServletException {
		System.out.println("init 메서드 호출");
	}

}
