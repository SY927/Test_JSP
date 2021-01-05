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
<%-- <c:if test="${param.color==1 }"> <!-- 조건 물어보고 -->
      <span style="color: red;">빨강</span> <!-- 맞으면 -->
 </c:if> --%>
 
<%
String str=request.getParameter("color");
if(str.equals(1)) {
%>
<span style="color:red">빨강</span>;
<%
}
%>
   
   <c:if test="${param.color==2 }"> <!-- 아니면 -->
      <span style="color: blue;">파랑</span>
   </c:if>
   <c:if test="${param.color==3 }">
      <span style="color: green;">초록</span>
   </c:if>
</body>
</html>
<!-- 유저타입을 가져와서 그게 어드민이면 출력, 아니면 회원 을 가져와서 출력 -->
<%--
if(request.getParameter("userType").equals("admin") {
out.print(request.getParameter("id")+"(관리자)");
} else {
out.print(request.getParameter("id")+"(회원)");
}


<c:if test="${param.userType=='admin'}">
	${param.id}(관리자)
</c:if>
<c:if test="${param.userType!='member'}"> //else가 없기 때문에 비교대상을 따로 써줘야한다.
	${param.id}(회원)
</c:if> 
	
<c:choose> -> 하나의 세트로 움직인다.
	<c:when> -> if
	</c:when>
	<c:oterwise> -> else
	</c:oterwise>
</c:choose>
	
	
<c:choose>
	<c:when test=&{param.userType=='admin'}>
		${param.id}(관리자)
		</c:when>
		<c:oterwise>
		${param.id}(회원)
		</c:oterwise>
</c:choose>

<c:choose> --java switch--
	<c:when test="조건1">몸체1</c:when>
	<c:when test="조건2">몸체2</c:when>
	<c:when test="조건3">몸체</c:when>
	<c:oterwise>몸체4</c:oterwise> --생략 가능--
</c:choose>
--%>







