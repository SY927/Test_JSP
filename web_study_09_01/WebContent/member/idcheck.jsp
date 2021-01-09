<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/members.js"></script>
</head>
<body>
	<h2>아이디 중복 확인</h2>
	<form action="idCheck.do" method="get" name="frm">
		ID <input type="text" name="userid" value="${userid}"> <input
			type="submit" value="중복 체크">
		<c:if test="${result == 1}">
	${userid}는 이미 사용중인 아이디입니다.
	<script type="text/javascript">
		opener.document.frm.userid.value = "";
	</script>
		</c:if>
		<c:if test="${result == 0}">
	${userid}는 사용 가능한 아이디입니다.
	<input type="button" value="사용" onclick="idok('${userid}')">
		</c:if>
	</form>
</body>
</html>