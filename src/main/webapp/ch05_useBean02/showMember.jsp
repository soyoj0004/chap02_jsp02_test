<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javalab.jsp.*" %>   
<%
		//request 영역에 저장된 newMember 객체 추출
	 Member newMember = (Member)request.getAttribute("newMember");


	String id = request.getParameter("id"); //id라는 이름으로 오는 파라미터
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>화면에서 받은 회원정보</h2>
	
	<p> 아이디 : <%= newMember.getId() %>
	<p> 비밀번호 : <%= newMember.getPassword() %>
	<p> 이름 : <%= newMember.getName() %>
	<p> 이메일 : <%= newMember.getEmail() %>
	
	<br>
	<!--  애플리케이션 배포 루트 경로 "컨텍스패스(진입정)" -->
	<h3>애플리케이션 배포 루트 : <%= application.getRealPath("/") %></h3>
</body>
</html>