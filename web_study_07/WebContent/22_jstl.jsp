<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="age" value="30" scope="page"></c:set>
나이:<c:out value="${age}">100</c:out><br>
	<c:remove var="age"/> <!-- 변수값 제거 -->
나이:<c:out value="${age}">100</c:out><br> <!-- 변수값이 없으니 default값 출력 -->

<c:catch var="errmsg">
예외 발생 전<br>
<%= 1/4 %>
예외 발생 후<br>
</c:catch><br>
<c:out value="${errmsg}"></c:out>
</body>
</html>