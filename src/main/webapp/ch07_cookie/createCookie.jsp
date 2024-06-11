<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 쿠키에 저장할 사용자 이름
    	String userName = "John Smith";
    
    	// URL 인코딩을 통해서 공백 및 특수문자 인코딩
    	String encodedUserName = URLEncoder.encode(userName, "utf-8");
    	
    	// 쿠키 객체 생성 Cookie("userName", encodeUserName);
    	Cookie userCookie = new Cookie("userName", encodedUserName);
    	
    	// 쿠키 유효 기간 설정(초단위)
    	userCookie.setMaxAge(60 * 60); // 1시간(60초 * 60 = 3600초)
    	
    	// 응답에 쿠키 추가(웹브라우저에 쿠키가 전송됨)
    	// 쿠키가 전송 될 때는 응답 헤더에 포함되어 전송됨.
    	response.addCookie(userCookie);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createCookie.jsp</title>
</head>
<body>
	<h3>쿠키가 생성되었습니다.</h3>
	
</body>
</html>