<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selectInfo.jsp</title>
</head>
<body>
   <h3>문화 컨텐츠 선택</h3>
   <form action="processData.jsp" method="post">
      <label for="infoType">정보 타입 선택</label>
      <select name="infoType" id="infoType">
         <option value="movie">영화정보</option>
         <option value="book">도서정보</option>
         <option value="album">음반정보</option>         
      </select>
      <input type="submit" value="선택">
   </form>
</body>
</html>