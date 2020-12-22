<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String ID = request.getParameter("id");
String PW = request.getParameter("pw");
String loginCheck = request.getParameter("loginCheck");
if (loginCheck.equals("user")) {
%>
	<jsp:forward page = "userMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("김고객","utf-8") %>' name="userName"/>
		</jsp:forward>
<% 
} else {
%>
<jsp:forward page = "managerMain.jsp">
		<jsp:param value='<%=URLEncoder.encode("한관리","utf-8") %>' name="userName"/>
		</jsp:forward>
<%
}
%>
</body>
</html>