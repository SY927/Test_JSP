<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
----------to String() 내용----------<br>
<h2><%= exception.toString() %></h2>
----------getMessage() 내용----------<br>
<h2><%= exception.getMessage() %></h2>
----------printStackTrace() 내용----------<br>
<h2><%= exception.printStackTrace() %></h2>
<h3>
숫자만 입력 가능합니다. 다시 시도 하세요.
<a href="add.html">다시하기</a>
</h3>
</body>
</html>