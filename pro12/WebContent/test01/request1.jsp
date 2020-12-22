<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%
request.setAttribute("name", "박수연");
request.setAttribute("address", "경기도 의정부시");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫번째 JSP</title>
</head>
<body>
<%
RequestDispatcher dispatcher = request.getRequestDispatcher("request2.jsp");
dispatcher.forward(request, response);
%>
<!-- forward방식을 실행 했을때, 실제 보여지는 페이지는 요청한 페이지이다.
요청된 페이지의 내용은 요청한 페이지에서 출력되며, 페이지가 새로 실행(실제 요청)은 되지 않는다. -->
</body>
</html>