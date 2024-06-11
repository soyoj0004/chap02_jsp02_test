<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.net.*, com.javalab.vo.Book" %>
<%
   List<Book> bookList = (List<Book>)request.getAttribute("bookList");
   // 문화 컨텐트 타입 추출하기
   String infoType = (String)request.getAttribute("infoType");   
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookList.jsp</title>
</head>
<body>
   <h3>도서목록</h3>
   <table border="1">
      <tr>
         <th>제목</th>
         <th>저자</th>
         <th>출판년도</th>
      </tr>
      <%
         for(Book book: bookList){  
            // queryString 생성작업, 각행마다 다르게
            String queryString = "title=" + URLEncoder.encode(book.getTitle(), "utf-8") +
                  "&author=" + URLEncoder.encode(book.getAuthor(), "utf-8") +
                  "&publicationYear=" + book.getPublicationYear();
      %>
         <tr>
            <td><a href="bookDetail.jsp?<%= queryString %>"><%= book.getTitle() %></a></td>
            <td><%= book.getAuthor() %></td>
            <td><%= book.getPublicationYear() %></td>
         </tr>
      <%
         } // end for
      %>
   </table>
   
   <button onclick="window.location.href='selectInfo.jsp?infoType=<%=infoType %>'">컨텐츠 선택</button>
   
</body>
</html>