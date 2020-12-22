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
String name = (String)session.getAttribute("name");
session.setAttribute("address", "경기도 의정부시"); // 현재, 값(박수연)이 있는 세션에 새로운 값을 set함.
%>
이름은 <%=name %>입니다.<br>
<a href = "session2.jsp">두번째 페이지로 이동</a> 
</body>
</html>