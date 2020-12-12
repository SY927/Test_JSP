package test01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BBSPostServlet
 */
@WebServlet("/bbs-post")
public class BBSPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");//
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head><title>게시판 글쓰기 - 결과 화면</title></head>");
		out.print("<body>");
		out.printf("이름 : %s <br>", name);
		out.printf("제목 : %s <br>", title);
		out.print("---------------<br>");
		out.printf("이름 : %s <br>", name);
		out.printf("<pre>%s<pre>", content);
		out.print("---------------<br>");
		out.print("저장되었습니다.");
		out.print("</body>");
		out.print("</html>");
		
	}

}
