<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       // request에서 쿠키 얻어내기
       Cookie[] cookies = request.getCookies();
       String userName = "손님";
       boolean isLoggedIn = false;   // 로그인 유무 체크 플래그
   
       if(cookies != null){
           for(Cookie cookie: cookies){
               if(cookie.getName().equals("userName")){
                   userName = URLDecoder.decode(cookie.getValue(), "utf-8");
                   isLoggedIn = true;   // 로그인
                   break; // 반복문 탈출
               }
           }
       }
   
       // 쿠키에 사용자 정보가 있으면 로그인 했다는 의미이므로
       // 사용자를 강제로 main.jsp로 이동시킨다.

   
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome.jsp</title>
</head>
<body>
   <h3>환영합니다. <%= userName %></h3>
   <br>
   <button id="btnLogin">로그인</button>
   
   <script>
      const id = document.querySelector("#btnLogin");
      id.addEventListener("click", function(){
         // window 객체는 브라우저의 창이나 프레임관련 정보 제공 객체
         // location 객체는 현재 창에 대한 정보
         // href 속성은 이동해갈 페이지의 Url 설정
         // [요약] 해당 페이지로 이동
         window.location.href = "loginForm.jsp";
      });
   </script>
</body>
</html>