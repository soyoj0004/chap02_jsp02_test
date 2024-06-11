<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	// 세션 (session)이란?
        // 클라이언트가 톰캣 웹  어플리케이션 서버(WAS)에 접속하면 톰캣은 JSESSIONID를
        // 발급해서 쿠키로 사용자에게 내려보낸다. JSESSONID의 값은 클라이언트를 
        // 구분하는 식별자 역할을 한다. 
        // 클라이언트는 이후부터 서버에 접속할 때 항상 JSESSIONID를 톰캣에게 제공한다. 
        // 클라이언트가 로그인을 한 후에 사용자 정보를 세션에 저장하면 해당 클라이언트의 
        // 락커를 역할을 하는 세션에 저장된다. 
    
        
        // [세션 객체의 생성과 서버의 메모리 공간 확보]
        // 클라이언트에게 JSESSIONID를 내려보냈다고 해서 서버의 해당 사용자의 메모리 공간이
        // 확보 되는 것은 아니다.  JSESSIONID는 클라이언트를 식별하는 역할을 할 뿐이다. 
        // 1. request 기본 객체의 getSession()를 호출할 때 비로서 세션 객체가 생성되면서
        // 해당 클라이언트를 위한 메모리 공간이 확보된다. 
        // 2.또는 jsp 기본 객체인 session 내장 객체를 호출 할 때도 세선 객체가 만들어지고
        // 메모리에 해당 클라인어트의 메모리 공간이 확보된다. 
        // 1번과 2번을 하지 않으면 해당 클라이언트의 세션 객체는 null이다. 
        
    
    	
    	//세션 객체 가져오기
    	HttpSession ses = request.getSession();
    
    	//세션 ID 조회
    	String sessionId= ses.getId(); //JsessionId
    	
    	// 세션에 마지막 접근 시간 조회
    	long lastAccesssdTime = ses.getLastAccessedTime();
    	
    	//시간 변환
    	java.util.Date lastDate = new java.util.Date(lastAccesssdTime);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 세션 정보 확인하기</h3>
	
	<p>세션 ID : <%=  sessionId %> </p>
	<p> 마지막 접근 시간 : <%= lastDate %> </p>
</body>
</html>