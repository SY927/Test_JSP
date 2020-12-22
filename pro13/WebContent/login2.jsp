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
String msg = request.getParameter("msg"); //null
if (msg != null) {
%>
<h2><%=msg %></h2> 
<% 
}
%>
<form action="result2.jsp" method="post">
아이디 : <input type = "text" name = "id"><br>
비밀번호 : <input type = "password" name = "pw"><br>
<input type = "submit" value = "로그인">
<input type = "reset" value = "다시 입력">
</body>
</html>