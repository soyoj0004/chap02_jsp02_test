<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	// 전송 파라미터 얻기
    	//String id = request.getParameter("id");
    
    	// 쿠키 읽어서 userName 되어 있는 쿠키 찾고 그 쿠키의 이름을 가지고 온다.
    	// request에서 쿠키 얻어내기
    	Cookie[] cookies = request.getCookies();
    	String userName = "손님";
    	
    	if(cookies != null){
    		for(Cookie cookie: cookies){
    			if(cookie.getName().equals("userName")){
    				userName = URLDecoder.decode(cookie.getValue(), "utf-8");
    				break; // 반복문 탈출
    			}
    		}
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
	<h3><%= userName %>님 여기는 메인페이지입니다.</h3>
	<br>
	<%
		if(!userName.equals("손님")){
	%>
		<button id="btnLogout">로그아웃</button>
	<%
		}else{
	%>
		<button id="btnLogin">로그인</button>
	<%
		}
	%>
	
	<script>
		const loginButton = document.querySelector("#btnLogin");
		id.addEventListener("click", function(){
			// window 객체는 브라우저의 창이나 프레임관련 정보 제공 객체
			// location 객체는 현재 창에 대한 정보
			// href 속성은 이동해갈 페이지의 Url 설정
			// [요약] 해당 페이지로 이동
			window.location.href = "loginForm.jsp";
		});
		const logoutButton = document.querySelector("#btnLogout");
		id.addEventListener("click", function(){
			// window 객체는 브라우저의 창이나 프레임관련 정보 제공 객체
			// location 객체는 현재 창에 대한 정보
			// href 속성은 이동해갈 페이지의 Url 설정
			// [요약] 해당 페이지로 이동
			window.location.href = "../deleteCookie.jsp";
		});
	</script>
</body>
</html>
