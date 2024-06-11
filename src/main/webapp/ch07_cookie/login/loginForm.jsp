<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLDecoder"%>    
    
    <%
    // request에서 쿠키 얻어내기
    Cookie[] cookies = request.getCookies();
    String userName = "손님";
    boolean isLoggedIn = false; // 로그인 유무 체크 플래그

    if(cookies != null){
        for(Cookie cookie: cookies){
            if(cookie.getName().equals("userName")){
                userName = URLDecoder.decode(cookie.getValue(), "utf-8");
                isLoggedIn = true; // 로그인
                break; // 반복문 탈출
            }
        }
    }

    // 쿠키에 사용자 정보가 있으면 로그인 했다는 의미이므로
    // 사용자를 강제로 main.jsp로 이동시킨다.
    if(isLoggedIn){   // 이미 로그인 되었음
        // 메인 페이지로 강제 이동
        response.sendRedirect("main.jsp");
        return;
    }

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
</head>
<body>
   <h2>로그인</h2>
   <form action="loginProcess.jsp" method="post">
      <label for="id">아이디:</label><br>
      <input type="text" name="id"><br>
      
      <label for="password">비밀번호:</label><br>
      <input type="password" name="password"><br>
      
      
      <input type="submit" value="전송">   
   </form>
</body>
</html>