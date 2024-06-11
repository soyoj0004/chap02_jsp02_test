<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
	<%
		//세션 무효화	
		session.invalidate();
	
		//request 기본 객체를 써서 세션 무효화
		request.getSession().invalidate();
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
	<h3> 로그아웃 되었습니다. </h3>
	<a href="loginForm.jsp">로그인</a>
</body>
</html>