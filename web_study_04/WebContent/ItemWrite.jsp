<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id= "itemBean" class="com.mission.javabeans.ItemBean"/>
<jsp:setProperty property = "*"  name = "itemBean"/>
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
<td>상품평</td>
<td><jsp:getProperty property = "name"  name = "itemBean"/></td>
</tr>

<tr>
<td>가격</td>
<td><jsp:getProperty property = "price"  name = "itemBean"/></td>
</tr>

<tr>
<td>설명</td>
<td><jsp:getProperty property = "description"  name = "itemBean"/></td>
</tr>
</table>
</body>
</html>