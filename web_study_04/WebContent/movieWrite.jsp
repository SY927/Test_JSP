<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id= "movieBean" class="com.mission.javabeans.MovieBean"/>
<jsp:setProperty property = "*"  name = "movieBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>입력 완료된 정보</h2>
<table>
<tr>
<td>제목</td>
<td><jsp:getProperty property = "title"  name = "movieBean"/>
</tr>
<tr>
<td>가격</td>
<td><jsp:getProperty property = "price"  name = "movieBean"/>
</tr>
<tr>
<td>감독</td>
<td><jsp:getProperty property = "director"  name = "movieBean"/>
</tr>
<tr>
<td>출연배우</td>
<td><jsp:getProperty property = "actor"  name = "movieBean"/>
</tr>
<tr>
<td>시놉시스</td>
<td><jsp:getProperty property = "synopsis"  name = "movieBean"/>
</tr>
<tr>
<td>장르</td>
<td><jsp:getProperty property = "genre"  name = "movieBean"/>
</tr>
</table>
</body>
</html>