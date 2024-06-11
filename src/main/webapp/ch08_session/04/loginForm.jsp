<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>
	<h3> 로그인</h3>
	<form action="login.jsp" method="post">
		아이디: <input type="text" name="id" size="10"> <br>
		비밀번호: <input type="password" name="password" size="10"> <br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>