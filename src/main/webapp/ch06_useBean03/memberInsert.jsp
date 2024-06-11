<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javalab.jsp.*" %>   
    
<%
		// post 전달되는 파라미터 인코딩
		request.setCharacterEncoding("utf-8");
%>
    <!-- useBean 액션 태그
    	1. scope= "request" : request 영역에서 뭔가를 찾는다.
    	2. id="member" : id가 member인 객체를 찾는다. 
    	3. member인 객체가 없으면 member 객체를 생셩해서 제공해준다.
     -->
   <jsp:useBean id="member" scope="request" class="com.javalab.jsp.Member" />
   
   <!-- setProperty 액션 태그 
   		1. name이 member인 객체의 setter메소드에 값을 세팅하겠다. 
   		2. member 객체가 갖고 있는 setter 메소드에다 이전 화면에서 받은 파라미터를 자동으로 포집해준다. 
   		3. html 폼에서 전송된 값을 자동으로 자바빈 클래스의 속성에 바인딩 해준다 .
   		4. 이전에 화면에서 name 속성에 있는 이름과 자바빈즈 도메인 클래스의 속성 이름이 동일해야 가능하다.  
   		5. property="*" : 전체 속성을 바인딩 해준다.  
    -->
   <jsp:setProperty name="member" property="*" />
   
   
    
<% 
   // post 전달되는 파라미터 인코딩
   request.setCharacterEncoding("utf-8");
   
	
    // 파라미터 추출
   String id = request.getParameter("id");
   String password = request.getParameter("password");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   
   // 받은 파라미터로 Member 객체 생성해서 보관
   Member newMember = new Member();
   newMember.setId(id);
   newMember.setPassword(password);
   newMember.setName(name);
   newMember.setEmail(email); 
   
   // 위에서 만든 객체를 request 영역에 저장
   // request.stAttribute("저장할이름", 저장할객체)
   request.setAttribute("newMember", newMember);
%>

<jsp:forward page="showMember.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberInsert.jsp</title>
</head>
<body>

</body>
</html>