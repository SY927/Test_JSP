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
String ID = request.getParameter("id");
if (ID.length()==0) {

	/* RequestDispatcher dispatch=request.getRequestDispatcher("login.jsp");
	dispatch.forward(request, response); */
%>
<jsp:forward page = "login.jsp"/>
<%
}
%>
<h2>환영합니다 <%=ID %>님~!</h2>
</body>
</html>