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
String address = (String)session.getAttribute("address");
%>
<!-- session은 페이지를 이동할 때 값을 저장/불러올 수 있다.
session은 브라우저가 바뀌거나 없어지지 않는 한 유효하다. -->
이름은 <%=name %>입니다.<br>
주소는 <%=address %>입니다.
</body>

</html>