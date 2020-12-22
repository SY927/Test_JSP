package sec01.ex01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FirstServlet extends HttpServlet {
// 파일이 없기때문에 web.xml에서 만들어 줘야한다.
	public void init() throws ServletException {
		System.out.println("init 메소드 호출");
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet 매서드 호출");
	}

	public void destory() {
		System.out.println("destory 메소드 호출");
	}

}