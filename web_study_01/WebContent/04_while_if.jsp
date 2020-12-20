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
	int i=0;
	while(true) {
		i++;
		out.println("2 *" + i + "=" + (2*i) + "<br>"); // out.~에서는 println을 해도 줄바뀜이 없기 때문에 <br>을 넣어준다.

%>
====================================<br>
<%
	if (i >= 9)
		break;
	}
%>
</body>
</html>