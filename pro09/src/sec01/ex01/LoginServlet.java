package sec01.ex01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*@WebServlet("/login")*/
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
	    String id = request.getParameter("user_id");
	    String pw = request.getParameter("user_pw");
	    String address = request.getParameter("user_address");
	    String email = request.getParameter("user_email");
	    String hp = request.getParameter("user_hp");
	    
	    String data = "�ȳ��ϼ��� <br>�α��� �ϼ̽��ϴ�.<p>";
	    data += "<html><body>";
	    data += "���̵� : " + id;
	    data += " <br>";
	    data += "��й�ȣ : " + pw;
	    data += " <br>";
	    data += "�ּ� : " + address;
	    data += " <br>";
	    data += "�̸��� : " + email;
	    data += " <br>";
	    data += "��ȭ��ȣ : " + hp;
	    data += "</html></body>";
	    out.print(data);
	}

}
