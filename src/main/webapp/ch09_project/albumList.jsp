<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.net.*, com.javalab.vo.*" %>
<%
   List<Album> albumList = (List<Album>)request.getAttribute("albumList");
   // 문화 컨텐트 타입 추출하기
   String infoType = (String)request.getAttribute("infoType");   
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>albumList.jsp</title>
</head>
<body>
   <h3>앨범목록</h3>
   <table border="1">
      <tr>
         <th>앨범 제목</th>
         <th>아티스트</th>
         <th>출시년도</th>
      </tr>
      <%
         for(Album album: albumList){   
               String queryString = "title=" + URLEncoder.encode(album.getTitle(), "UTF-8") +
                        "&artist=" + URLEncoder.encode(album.getArtist(), "UTF-8") +
                        "&releaseYear=" + album.getReleaseYear() ;
      %>  
         <tr>
            <td><a href="albumDetail.jsp?<%= queryString %>"><%= album.getTitle() %></a></td>
            <td><%= album.getArtist() %></td>
            <td><%= album.getReleaseYear() %></td>
         </tr>
      <%
         } // end for
      %>
   </table>
   
   <button onclick="location.href='selectInfo.jsp?infoType=<%=infoType %>'">컨텐츠 선택</button>
   
</body>
</html>