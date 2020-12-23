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

/**
 * Servlet implementation class SecondServlet
 */
@WebServlet("/second")
public class SecondServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init 메소드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destory 메소드 호출");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	    String id = request.getParameter("id");
	    String pw = request.getParameter("pw");
	    String address = request.getParameter("address");
	    
	    out.println("<html><body>");
	    if (id != null && id.length() != 0) {
	    	out.println("이미 로그인 상태입니다.<p>");
	    	out.println("첫번째 서블릿에서 넘겨준 아이디 : " + id + "<br>");
	    	out.println("첫번째 서블릿에서 넘겨준 비밀번호 : " + pw + "<br>");
	    	out.println("첫번째 서블릿에서 넘겨준 주소: " + address + "<br>");
	} else {
		out.println("로그인 하지 않았습니다.<br>");
		out.println("다시 로그인하세요.<br>");
		out.println("<a href='/pro09.login.html'>로그인 창으로 이동하기<>");
	
	}	
	}

}
