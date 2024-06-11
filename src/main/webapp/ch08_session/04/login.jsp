<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
 
 	<%
 		String id = request.getParameter("id");
 		String password = request.getParameter("password");
 		
 		if(id.equals("java") && password.equals("1234")) {
 			//세션 객체 생성
 			HttpSession ses = request.getSession(false);
 			// 세션 객체에 userId 저장
 			ses.setAttribute("userId", id);
 			// welcome.jsp 페이지로 이동 
 		    response.sendRedirect("welcome.jsp"); 
 			
 		} else {
 			//로그인 실패시 Html 경고 메시지 출력 및 뒤로가기 페이지 랜더링 
 		}
 	
 	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login.jsp</title>
</head>
<body>
	<p>아이디와 비밀번호를 확인하세요. </p>
	<a href="loginForm.jsp">로그인</a>
</body>
</html>