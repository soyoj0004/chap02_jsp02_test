<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javalab.jsp.Member" %>
<%@ page session = "true"  %>
   <%
      // 세션 객체 생성
      // false : 세션이 있으면 가져오고 없으면 null 반환한다. 
      // false 안준 경우  : 세션이 있으면 가져오고 없으면 생성해서 가져와버린다. 
      HttpSession ses = request.getSession(false);
   
      Member member = null;
      
      if(ses != null) {
         member = (Member)ses.getAttribute("member");
      }
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getMember.jsp</title>
</head>
<body>
   <h3>세션에 저장한 자바빈즈 값 확인</h3>
   
   <%
      if(member != null) { // 자바빈 객체가 생성에 저장되어 있다.
   %>
      <p>세션에 저장된 Member 자바빈 객체: </p>
      <ul>
         <li>아이디 : <%= member.getId() %></li>
         <li>이름 : <%= member.getName() %></li>
         <li>이메일 : <%= member.getEmail() %></li>
      </ul>
   <%
      } else {
   %>
      <p>세션에 저장된 Member 자바빈 객체가 존재하지 않습니다.</p>
   <%
      }
   %>
    <a href="setMember.jsp">세션에 Member 자바빈 객체 저장하기</a>
</body>
</html>