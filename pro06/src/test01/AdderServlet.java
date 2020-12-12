package test01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdderServlet
 */
@WebServlet("/adder")
public class AdderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	// ��𼭵� ���ٰ����ϰ�
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String str1 = request.getParameter("num1"); //���� �Ѿ��(���� �ƴ�)
		String str2 = request.getParameter("num2");
		int num1 = Integer.parseInt(str1);
		int num2 = Integer.parseInt(str2);
		int sum = num1 + num2; 
		response.setContentType("text/html;charset = utf-8");
		PrintWriter out = response.getWriter(); //
		out.print("<html>");
		out.print("<head><title>���� ���α׷� - ��� ȭ��</title></head>");
		out.print("<body>");
		out.printf("%d + %d = %d", num1, num2, sum);
		out.print("</body>");
		out.print("</html>");
	
		
		
	}
}
