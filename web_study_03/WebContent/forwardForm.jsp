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
request.setAttribute("id","king@kings.com");
request.setAttribute("name","박수연");
%>
forwardForm_eun.jsp 페이지입니다.<br>
화면에 절대로 표시되지 않습니다.<br>
<jsp:forward page="forwardTo_eun.jsp"/>
</body>
</html>