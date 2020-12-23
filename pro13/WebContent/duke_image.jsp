<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

String name = request.getParameter("name");
String imgName = request.getParameter("imgName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>이름은 <%=name%>입니다.</h2>
<img src="image/<%=imgName%>"> <!-- 실행할 파일과 이미지파일이 같은 폴더안에 있으면 './'를 써주거나 아무것도 안써주면 된다.  -->
</body>
</html>