<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
안녕하세요. 쇼핑몰 듀크 시작부분입니다~!<br>
<jsp:include page="duke_image.jsp" flush="true">
<jsp:param value="듀크" name = "name"/>
<jsp:param value="duke.png" name = "imgName"/>
</jsp:include><br>
안녕하세요. 쇼핑몰 듀크 끝부분입니다~!<br>
</body>
</html>