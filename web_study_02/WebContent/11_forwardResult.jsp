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
String age=request.getParameter("age");
String name=(String)request.getAttribute("name");
%>
forward방식으로 이동된 페이지<p>
나이 : <%=age %><p>
이름 : <%=name %>
</body>
</html>