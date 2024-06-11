<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <!-- 
    jsp:useBean 액션 태그 
    - 자바 도메인 클래스를 자바 빈즈 규약에 따라 자바빈 객체로 생성할 수 있다.
    - 객체로 생성한 자바 빈즈는 request, session, application 영역에 저장하여
    	다른 페이지들과 공유할 수 있다. 
    - id="member" : 자바빈즈를 만드는 데 그 이름을 member라고 하겠다.
    - class: :자바 빈즈로 만들어질 도메인 클래스 풀경로"
    - scope = "request" : 자바 빈즈를 생성해서 request 영역에 보관하겠다.
    
    -->
    
    
 <jsp:useBean id="member" scope="request" class= "com.javalab.jsp.Member" />
 
 
	 <%
	 		//위에서 생성한 Member 객체 (자바빈즈)에 다음 페이지로 전달할 값 세팅 
	 		member.setId("dream");
	 		member.setName("홍길동");
	 		member.setPassword("1234");
	 		member.setEmail("a@a.com");
	 
	 %>
	 
	 
	 <jsp:forward page="useJavaBeans.jsp"/>
	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>makeJavaBeans.jsp</title>
</head>
<body>

</body>
</html>