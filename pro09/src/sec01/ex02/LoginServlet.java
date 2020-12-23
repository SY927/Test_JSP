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


//@WebServlet("/login")
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
		System.out.println("init 메소드 호출");
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destory 메소드 호출");
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
	    
	    String data = "안녕하세요 <br>로그인 하셨습니다.<br>";
	    data += "<html><body>";
	    data += "아이디 : " + id;
	    data += " <br>";
	    data += "비밀번호 : " + pw;
	    data += " <br>";
	    data += "주소 : " + address;
	    data += " <br>";
	    data += "이메일 : " + email;
	    data += " <br>";
	    data += "전화번호 : " + hp;
	    out.print(data);
	    
	    address=URLEncoder.encode(address, "utf-8");
	    out.print("<a href='/pro09/second?id="+id+"&pw="+pw+"&address"+address+"'><br>두번째 서블릿으로 보내기</a>");
	    data += "</html></body>";
	    
	}

}
