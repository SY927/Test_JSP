<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
String msg ="아이디를 입력하지 않았습니다. 아이디를 입력해 주세요.";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String ID = request.getParameter("id");
if (ID.length()==0) { // 아이디 길이가 0일때 login.jsp로 보내준다.(위늬 msg메세지가 뜨게끔!)
%>
<jsp:forward page="login2.jsp">
<jsp:param value="<%=msg %>" name="msg"/>
</jsp:forward>
<%
}
%>
<h2>환영합니다 <%=ID %>님~!</h2>

</body>
</html>