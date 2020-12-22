<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");%>
입력하신 정보는 아래와 같습니다.<p>
<%
String grad = request.getParameter("grad");
String na = request.getParameter("na");
String likes[] = request.getParameterValues("like");
out.print("학력 : " + grad + "\n");
out.print("소속 국가 : " + na + "\n");
out.print("관심 분야 : ");
for (int i = 0; i < likes.length; i++) {
	out.print(likes[i] + "\t");
}

%>


</body>
</html>