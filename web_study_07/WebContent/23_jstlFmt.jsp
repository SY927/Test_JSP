<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:formatNumber value="1234567.89"></fmt:formatNumber>
${value }<br>
<fmt:formatNumber value="1234567.89" groupingUsed="false"></fmt:formatNumber>
${value }<br>
<fmt:formatNumber value="0.5" type="percent"></fmt:formatNumber>
${value }<br>
<fmt:formatNumber value="10000" type="currency"></fmt:formatNumber>
${value }<br>
<fmt:formatNumber value="10000" type="currency" currencySymbol="$"></fmt:formatNumber>
${value }<br>
<fmt:formatNumber value="1234567.8912345" pattern="#,#00.0"></fmt:formatNumber> <!-- 소수점이하 두자리에서 .찍음고 세자리 단위로 ,찍음-->
${value }<br>
<fmt:formatNumber value="1234567.8" pattern="#,#00.0#"></fmt:formatNumber> <!-- 소수점이하 두자리에서 .찍음고 세자리 단위로 ,찍음-->
${value }<br> <!-- 밸류값이 패턴자릿수보다 작을때는 공백으로 처리한다는 의미. -->
<fmt:formatNumber value="1234567.89" pattern=".000"></fmt:formatNumber> 
${value }<br> <!-- 밸류값이 패턴자릿수보다 작을때는 0으로 처리한다는 의미. -->
<fmt:formatNumber value="123.89" pattern="00000.###"></fmt:formatNumber> 
${value }<br>
<fmt:formatNumber value="123456.89" pattern="#####.###"></fmt:formatNumber> 
${value }<br>
<fmt:formatNumber value="123456.89" pattern="#########.###"></fmt:formatNumber> 
${value }<br>




</body>
</html>