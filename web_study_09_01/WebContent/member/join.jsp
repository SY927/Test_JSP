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
	<h2>회원가입</h2>
	'*' 표시 항목은 필수 입력 사항입니다.
	<form action="../join.do" method="post" name="frm">
		<table>
			<tr>
				<td>name</td>
				<td><input type="text" name="name" size="20">*</td>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="userid" size="20">*<input
					type="hidden" name="reid" size="20"><input type="button"
					value="중복체크" onclick="idCheck()"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="text" name="pwd" size="20">*</td>
			</tr>
			<tr height="30">
				<td width="80">PW CHECK</td>
				<td><input type="text" name="pwd_check" size="20">*</td>
			</tr>
			<tr>
				<td>email</td>
				<td><input type="email" name="email" size="20">*</td>
			</tr>
			<tr>
				<td>phone</td>
				<td><input type="text" name="phone" size="20">*</td>
			</tr>
			<tr>
				<td>grade</td>
				<td>admin<input type="radio" name="admin" size="20" value="1">user<input
					type="radio" name="admin" size="20" value="0">*
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					onclick="return joinCheck()"><input type="reset"></td>
			</tr>
		</table>
	</form>
</body>
</html>