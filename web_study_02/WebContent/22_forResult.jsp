
<%--



<%!   
   public int sum(int a) {
      int sum = +a;
      return sum;
      
}%>
   
   String a= request.getParameter("put");
   sum();   
      for(int i=1;i<=;i++){
      
   }
--%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<h1>계산 결과</h1>
<%!
public int func(int n){
   int sum=0;
   for(int i=1;i<=n;i++){
      sum+=i;
   }
   return sum;
}
%>
<%
int n = Integer.parseInt(request.getParameter("num"));
for(int i=1;i<=n;i++){
   if(i==n){
      out.print(i+"="+func(n));
   }else{
      out.print(i+"+");
   }
}
%>

</body>
</html>