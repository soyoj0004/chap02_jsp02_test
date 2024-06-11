<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberform.jsp</title>
</head>
<body>
	<h3>회원가입</h3>
	<form action = "memberInsert.jsp" method="post">
	
		<label for="id">아이디</label> <br>
		<input type = "text" name="id"> <br>
		
		<label for="password">비밀번호</label> <br>
		<input type= "text" name="password"> <br>
		
		<label for="name">이름</label> <br>
		<input type = "text" name="name"> <br>
		
		<label for="email">이메일</label> <br>
		<input type = "email" name="email"> <br>
		
		<input type = "submit" value="전송"> 
	</form>
</body>
</html>