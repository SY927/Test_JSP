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
String[] movieList={"타이타닉","시네마 천국","혹성탈출","킹콩"};
pageContext.setAttribute("movieList", movieList);
%>
<c:forEach var="movie" items="${movieList}"> <!-- movie에 저장 -->
	${movie}<br> <!-- 하나씩 출력 -->
</c:forEach>
</body>
</html>
<%--
<c:forEach var="변수명" items="배열과 같은 집합체">
	몸체
</c:forEach>
--%>