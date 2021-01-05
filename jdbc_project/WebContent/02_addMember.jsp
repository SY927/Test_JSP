<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    Connection conn = null;
    PreparedStatement pstmt=null;
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String uid="scott";
    String pass="tiger";
    String sql="insert into member values(name,userid,pwd,email,phone,admin)"; // PreparedStatement를 선언하면 이렇게 써줄수 있다.

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 페이지</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String userid=request.getParameter("userid");
String pwd=request.getParameter("pwd");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String admin=request.getParameter("admin");

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection(url,uid,pass);
	pstmt=conn.preparedStatement(sql);
	
	pstmt.setString(1, name);
	pstmt.setString(2, userid);
	pstmt.setString(3, pwd);
	pstmt.setString(4, email);
	pstmt.setString(5, phone);
	pstmt.setString(6, Integer.parseInt(admin));
	//

} catch(Exception e) {
	e.printStackTrace();
} finally {
	try{
		if(pstmt != null)
			pstmt.close();
	}
}
%>
</body>
</html>










