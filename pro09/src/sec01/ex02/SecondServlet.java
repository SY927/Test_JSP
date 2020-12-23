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
		System.out.println("init �޼ҵ� ȣ��");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destory �޼ҵ� ȣ��");
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
	    	out.println("�̹� �α��� �����Դϴ�.<p>");
	    	out.println("ù��° �������� �Ѱ��� ���̵� : " + id + "<br>");
	    	out.println("ù��° �������� �Ѱ��� ��й�ȣ : " + pw + "<br>");
	    	out.println("ù��° �������� �Ѱ��� �ּ�: " + address + "<br>");
	} else {
		out.println("�α��� ���� �ʾҽ��ϴ�.<br>");
		out.println("�ٽ� �α����ϼ���.<br>");
		out.println("<a href='/pro09.login.html'>�α��� â���� �̵��ϱ�<>");
	
	}	
	}

}
