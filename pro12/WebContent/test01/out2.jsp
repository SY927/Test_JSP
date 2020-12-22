<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String age=request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 출력창</title>
</head>
<body>

<%
/*if (name != null || name.length() !=0) {*/
/*if (name != null && name.length() !=0) {*/
/*if (!name.equals("") && name.length()!=0)*/ //이름이 공백과 같냐,! -> false && 이름의 길이가 0과 같지 않냐
/*if (!name.equals("") && name.length()!=0) { */
if (!name.contains("") && name.length()!=0) {

%>
<h1><%=name %>,<%=age %></h1>
<%
} else {
%>
<h1>이름을 입력하세요</h1>
<%
}
%>

<!-- out 표기법 -->
<%
if (name != null || name.length() !=0) {
	
%>
<h1><% out.println(name + "," + age); %></h1>
<%
} else {
%>
<h1>이름을 입력하세요</h1>
<%
}
%>
</body>
</html>