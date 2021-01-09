<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<pre>
<c:set var="now" value="<%=new java.util.Date() %>"></c:set>
default : <c:out value="${now}"></c:out>
Korea KST : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
<fmt:timeZone value="GMT">
London GMT : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></fmt:timeZone>
<fmt:timeZone value="GMT-5">
NewYork-5 GMT : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/></fmt:timeZone>
</pre>
</body>
</html>