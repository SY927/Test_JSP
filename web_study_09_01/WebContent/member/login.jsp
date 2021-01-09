<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../script/members.js"></script>
</head>
<body>
	<h2>로그인</h2>
	<form action="http://localhost:8080/web_study_09/login.do"
		method="post" name="frm">
		<table>
			<tr>
				<td>id</td>
				<td><input type="text" name="userid" value="${userid}"></td>
			</tr>
			<tr>
				<td>pwd</td>
				<td><input type="text" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					onclick="return loginCheck()" value="login"> <input
					type="button" value="회원가입" onclick='location.href="join.jsp"'>
					<input type="reset"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">${message}</td>
			</tr>
		</table>
	</form>
</body>
</html>