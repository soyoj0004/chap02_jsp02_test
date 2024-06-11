<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javalab.jsp.Member" %>
<%@ page session="true" %>
   <%
         // 세션 객체 생성
         HttpSession ses = request.getSession();
   
         // Member 자바빈 객체를 생성
         Member member = new Member("dream", "1234", "John Smith", "j@a.com");
         
         // Member 자바빈을 세션에 저장
         ses.setAttribute("member", member);
         
         out.println("<p> Member 자바빈을 세션에 저장했습니다." + member.getName() + "</p>"); 
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setMember.jsp</title>
</head>
<body>
   <a href="getMember.jsp">세션에 Member 자바빈 객체 저장하기</a>
</body>
</html>