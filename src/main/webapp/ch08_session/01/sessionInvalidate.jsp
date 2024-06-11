<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       // 세션 무효화
       // jsp 기본 객체인 session의 invalidate()메소드 호출하면 세션 무효화됨.
       session.invalidate(); 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sessionInvalidate.jsp</title>
</head>
<body>
   <h3>세션을 무효화 하였습니다.</h3>
</body>
</html>