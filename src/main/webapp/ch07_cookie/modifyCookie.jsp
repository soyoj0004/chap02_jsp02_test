<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       //새로운 사용자
       String newUserName = " 홍 길 동 ";
       String encodinName = URLEncoder.encode(newUserName, "utf-8");
       
       
       
       // 기존 쿠기 이름으로 새로운 쿠기 새성, 하지만 이름은 다르게 
       Cookie userCookie = new Cookie("UserName", encodinName);
       
       // 쿠키 유효기간
       userCookie.setMaxAge(3600);
       
       //respnse 기본 객체의 addCookie 메소드를 통해서 쿠키 전송 
       // 응답 헤더의 Set=Cookie 헤더가 추가되어 클라이언트에게 응답으로 전송됨.
       
       response.addCookie(userCookie);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyCookie</title>
</head>
<body>
      <h3>쿠기 값이 변경되었습니다 .</h3>
</body>
</html>