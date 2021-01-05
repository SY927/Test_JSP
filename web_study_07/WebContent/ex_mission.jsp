<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action=ex2_missionResult.jsp method="post">
아이디 : <input type="text" name="id"><br>
암&nbsp;&nbsp;&nbsp;호 : <input type="password" name="pw"><br>
<input type="radio" name="admin" checked="checked">사용자
<input type="radio" name="admin" value="2">관리자<br>
<input type="submit" value="로그인">
</form>
</body>
</html>