<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");%>
입력한 정보는 아래와 같습니다.<p>
ID : <%=request.getParameter("userid")%><p>
Password : <%=request.getParameter("userpwd") %><p>
자기소개 : <%=request.getParameter("desc") %>
</body>
</html>