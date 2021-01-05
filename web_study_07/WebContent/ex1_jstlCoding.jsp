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
<%
String[] seasonList={"봄", "여름", "가을", "겨울"};
pageContext.setAttribute("seasonList", seasonList);
%>
<ul>
<c:forEach var="season" items="${seasonList}" varStatus="status">
<c:choose>
	<c:when test="${status.first}">
	<li style="font-weight:bold;color:red;">${season}</li>
	</c:when>
	<c:otherwise>
	<li>${season}</li>
	</c:otherwise>
	</c:choose>
	</c:forEach>
	</ul>

<c:forEach var="season" items="${seasonList}" varStatus="status">
 ${season}
 <c:if test="${not status.last}">
 </c:if>
 </c:forEach>
	
</body>
</html>