<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
     
    	String title = request.getParameter("title");
    	String director = request.getParameter("director");
    	String releaseYear = request.getParameter("releaseYear");
     
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세 정보</title>
</head>
<body>
	<h3>영화 상세 정보</h3>

	<table border="1">
		<tr>
			<th>제목</th>
			<td><%= title %></td>
			
		</tr>
		<tr>
			<th>제작자</th>
			<td><%= director %></td>
			
		</tr>
		<tr>
			<th>개봉년도</th>
			<td><%= releaseYear %></td>
			
		</tr>
	</table>
</body>
</html>