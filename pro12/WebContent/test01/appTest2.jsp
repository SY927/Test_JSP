<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 스코프 테스트2</title>
</head>
<body>
<%
String name = (String)session.getAttribute("name");
String address = (String)application.getAttribute("address");
%>
<!-- application은 응용프로그램(서버)가 종료될 때까지 유효하다. -->
<h3>이름은 <%=name %>입니다.<br></h3>
<h3>주소는 <%=address %>입니다.</h3>
</body>
</html>