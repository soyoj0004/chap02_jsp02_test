<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- 
    	jsp:useBean : 자바 빈즈 사용하겠다.
    	scope = "request : request 영역에서 뭔가를 찾겠다. 
    	id = "member: id가 member인 자바빈즈를 찾겠다.
    	class = " 자바 빈즈의 풀경로 " 
    
     -->
    
     <jsp:useBean id="member" scope="request" class= "com.javalab.jsp.Member" />
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useJavaBeans.jsp</title>
</head>
<body>
	<h2>회원정보</h2>
	<pre>
		1. id: <%= member.getId()%>
		2. password: <%= member.getPassword() %>
		3. name: <%= member.getName() %>
		4. email: <%= member.getEmail() %>
	</pre>
</body>
</html>