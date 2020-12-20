<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%! int global_cnt=0; %> <%-- 전역변수 -> 클래스가 없어지지 않는 한 남아있음(처리 값 증가)--%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int local_cnt=0; //지역변수 -> 한번 실행되면 없어짐
	out.print("<br>local_cnt:");
	out.print(++local_cnt);
	out.print("<br>global_cnt:");
	out.print(++global_cnt);
%>
</body>
</html>