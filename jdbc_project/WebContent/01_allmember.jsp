<%@page import = "java.sql.ResultSet"%>
<%@page import = "java.sql.Statement"%>
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String uid = "scott";
String pas = "tiger";
String sql = "select * from member";
String sql2 = "insert into member values('강현승','liver','1234','liver@naver.com','010-3333-3232',0)";

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width ="800" border = "1">
 	<tr>
 		<th>이름</th>
 		<th>아이디</th>
 		<th>암호</th>
 		<th>이메일</th>
 		<th>전화번호</th>
 		<th>권한(1.관리자, 2.일반회원)</th>
 	</tr>
 <%
 	try { //순서와 문법 외워두기
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 conn = DriverManager.getConnection(url, uid, pas);
	 stmt = conn.createStatement(); 
	 stmt.executeUpdate(sql2);
	 rs = stmt.executeQuery(sql);
	 
	 while(rs.next()) {
		 out.print("<tr>");
		 out.print("<td>"+rs.getString("name")+"</td>");
		 out.print("<td>"+rs.getString("userid")+"</td>");
		 out.print("<td>"+rs.getString("pwd")+"</td>");
		 out.print("<td>"+rs.getString("email")+"</td>");
		 out.print("<td>"+rs.getString("phone")+"</td>");
		 out.print("<td>"+rs.getString("admin")+"</td>");
		 out.print("</tr>");
	 }
 } catch(Exception e) { //처리 중에 문제가 생기면 
	 e.printStackTrace();  //오류 부분 보여주고
 } finally {
	 try { //파일을 다 닫으라는 명령.
		 if(rs != null) //객체가 메모리상에 살아있으면 다 닫아줘야 한다는 의미.
			 rs.close();
		 if((stmt != null))
			 stmt.close();
		 if((conn != null))
			 conn.close();
	 } catch(Exception e) {
		 e.printStackTrace();
	 }
 }
 %>
</table>
</body>
</html>