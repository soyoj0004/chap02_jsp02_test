<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>    <!--  안 줘도 기본으로 들어감  -->


    <%
    	//request 기본 객체를 통해서 세션 객체를 가져온다.
    	HttpSession ses = request.getSession();
    
    	String userId = "dream";
    	//세션에 값 저장
    	ses.setAttribute("userId", userId);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setSession.jsp</title>
</head>
<body>
	<h3> 세션에 값 저장하기 </h3>
	
	
	<a href="getSession.jsp">세션에 저장된 값 확인하기.</a>
</body>
</html>