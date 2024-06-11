<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    	//request -> 세션 객체 얻기 (생성)
       HttpSession ses = request.getSession();
    
       String userId = null;
    	
       
       //세션이 있는지 먼저 확인 
       if(ses != null){
    	   // 세션이 저장되어 있느 값 중에서 "userId"라는 키에 매핑된 값 (userId)
    	   // 행변환 : getAttribute()메소드의 반환 타입이 Object type이므로,
          userId = (String)ses.getAttribute("userId");
          
       }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getSession.jsp</title>
</head>
<body>
      <h3>세션 값 확인하기</h3>
      
      <%
         if(userId != null && !userId.isEmpty()){
      %>
         <p>세션에 저장된 사용자ID : <%= userId %></p>
      <%
         }else{
      %>   
         <p>세션이 없거나 세션에 저장된 사용자 정보가 없습니다.</p>
      <%
         }
      %>   
      
         
         
</body>
</html>