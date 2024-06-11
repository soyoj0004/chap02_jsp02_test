<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = request.getParameter("id");
    	String password = request.getParameter("password");
    	
    	if(id.equals("java") && password.equals("1234")){
    		//// 쿠키 생성 작업
    		// 사용자 계정이 있을 경우로 가정
    		String encodedUserId = URLEncoder.encode(id, "utf-8");
    		
    		// 쿠키 생성(이름은 userName)
    		Cookie userCookie = new Cookie("userName", encodedUserId);
    		userCookie.setMaxAge(3600); // 쿠키 유효 기간
    		
    		// 응답에 쿠키 추가
    		response.addCookie(userCookie);
    		
    		// 웰컴 페이지로 이동
    		response.sendRedirect("welcome.jsp"); // 쿼리스트링으로 id 전달
    		
    	}else{
    		// 로그인에 실패시 다시 로그인 폼으로 이동
    		response.sendRedirect("loginForm.jsp");
    	}
    		
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginProcess.jsp</title>
</head>
<body>

</body>
</html>