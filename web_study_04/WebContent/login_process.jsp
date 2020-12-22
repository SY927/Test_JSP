<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.saeyan.javabeans.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
   String id= request.getParameter("id");
   String pw= request.getParameter("pw");

   MemberBean m= new MemberBean();
   m.setUserid("SY");
   m.setPwd("1234");
   
   if(id.equals(m.getUserid())&&pw.equals(m.getPwd())){
      out.println(m.getUserid()+"님 반가워요~" );
   }
   else{
      out.println("회원 정보가 일치하지않습니다");
   }

   
%>

</body>
</html>