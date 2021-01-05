<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection connection=null;
PreparedStatement pstmt=null;
ResultSet set=null;

String url="jdbc:oracle:thin:localhost:1521:xe";
String uod="scott";
String pass="tiger";
String sql="select * from employee";
%>

<%
try { // 값을 넘겨주고 넘겨진걸 받고 성공하면 출력 아니면 else
	Class.forName("oracle.jdbc.driver.OrecleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
	pstmt = conn.createStatement();
	rs = stmt.executeQuery(sql);
%>
</body>
</html>