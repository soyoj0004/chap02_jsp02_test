<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="com.javalab.jsp.*" %>
<% 
   // post 전달되는 파라미터 인코딩
   request.setCharacterEncoding("utf-8");
   
   // 파라미터 추출
   String id = request.getParameter("id");
   String password = request.getParameter("password");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   
   // 받은 파라미터로 Member 객체 생성해서 보관
   Member newMember = new Member();
   newMember.setId(id);
   newMember.setPassword(password);
   newMember.setName(name);
   newMember.setEmail(email);
   
   // 위에서 만든 객체를 request 영역에 저장
   // request.stAttribute("저장할이름", 저장할객체)
   request.setAttribute("newMember", newMember);
%>

<jsp:forward page="showMember.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInsert.jsp</title>
</head>
<body>

</body>
</html>