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
<%--url로부터 읽어온 결과를 출력
변수를 선언하면 읽어온 결과를 변수에 담아 출력 --%>
<c:import url="http://localhost:8080/web_study_07/02_el.jsp" var="data"></c:import>
${data}
</body>
</html>