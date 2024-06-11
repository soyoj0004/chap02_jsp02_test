<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
       String title = request.getParameter("title");
       String author = request.getParameter("author");
       String publicationYear = request.getParameter("publicationYear");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookDetal.jsp</title>
</head>
<body>
   <h3>도서 상세 정보</h3>
   <table border="1">
      <tr>
         <th>제목</th>
         <td><%= title %></td>
      </tr>
      <tr>
         <th>저자</th>
         <td><%= author %></td>
      </tr>
      <tr>
         <th>출판년도</th>
         <td><%= publicationYear %></td>
      </tr>   
   </table>   
</body>
</html>