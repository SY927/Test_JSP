package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class GetAttribute
 */
@WebServlet("/get")
public class GetAttribute extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAttribute() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		 // 내장객체와는 다르게, 서블릿에서는 값을 주고받을 때 객체를 생성해 주어야한다.
		ServletContext ctx = getServletContext();
		HttpSession sess = request.getSession();
		
		String ctxMsg = (String)ctx.getAttribute("context");
		String sesMsg = (String)sess.getAttribute("session");
		String reqMsg = (String)request.getAttribute("request");
		out.print("context값: " + ctxMsg +"<br>");
		out.print("session값: " + sesMsg +"<br>");
		out.print("request값: " + reqMsg +"<br>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
