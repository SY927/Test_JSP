<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
	<h2>회원수정</h2>
	<form action="memberUpdate" method="post" name="frm">
		<table>
			<tr height="30">
				<td width="80">NAME</td>
				<td><input type="text" name="name" size="20"
					value="${mVo.name}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type="text" name="userid" size="20"
					value="${mVo.userid}" readonly="readonly"></td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="text" name="pwd" size="20">*</td>
			</tr>
			<tr>
				<td>PW_CHECK</td>
				<td><input type="text" name="pwd_check" size="20">*</td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td><input type="text" name="email" size="20"
					value="${mVo.email}">*</td>
			</tr>
			<tr>
				<td>PHONE</td>
				<td><input type="text" name="phone" size="20"
					value="${mVo.phone}">*</td>
			</tr>
			<tr>
				<td>grade</td>
				<td><c:choose>
						<c:when test="${mVo.admin==0}">
				admin<input type="radio" name="admin" size="20" value="1">user<input
								type="radio" name="admin" size="20" value="0" checked="checked">*
				</c:when>
						<c:when test="${mVo.admin==1}">
				admin<input type="radio" name="admin" size="20" value="1"
								checked="checked">user<input type="radio" name="admin"
								size="20" value="0">*
				</c:when>
					</c:choose></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					onclick="return joinCheck()"><input type="reset"></td>
			</tr>
		</table>
	</form>
</body>
</html>