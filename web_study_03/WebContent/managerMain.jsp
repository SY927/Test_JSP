<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="skyblue">
<h2>관리자 로그인 성공</h2>
<%=URLDecoder.decode(request.getParameter("userName"),"utf-8") %> <!-- 값을 가져올 때 사용하는 문법 -->
<%=request.getParameter("id")%>님 환영합니다.
</body>
</html>