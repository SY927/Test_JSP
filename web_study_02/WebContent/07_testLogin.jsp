<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 인증 페이지</title>
</head>
<body>
<%
String id="hong";
String pwd = "1234";
String name = "홍길동";
request.setCharacterEncoding("UTF-8");

if (id.equals(request.getParameter("id")) && 
		pwd.equals(request.getParameter("pwd"))) {
	response.sendRedirect("08_main.jsp?name="+URLEncoder.encode(name, "UTF-8"));
} else {
	response.sendRedirect("06_loginForm.jsp");
}

request.getParameter("id");
request.getParameter("pwd");
%>
</body>
</html>