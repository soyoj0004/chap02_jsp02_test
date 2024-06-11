<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>layout.jsp</title>
<style>
      .container{
         display: flex ; /*플렉스 컨테이너 */
         flex-direction: column ; /* 주축 세로 */
         height: 100vh; /* 디바이스의 높이를 100% 모두 차지 */
         margin : 3px; 
      }
      .header, .footer, .sidebar, .main-content{
         margin : 3px;
      }
      .header{
         flex: 0 1 auto;   /* 부모로 부터 차지할 높이, 0-한줄 */
         padding: 10px;
         text-align: center;
         background: #1abc9c;
         color: white;
      }
      .content{
         display: flex;
         flex: 1 1 auto;   /* 수정 */
      }
      .sidebar{
        	flex: 0 1 20%;   /* content 전체 넓이 중에서 20% 차지 */
            padding: 10px;
        /*  width: 25% */
            background: #3498db;
            color: white;
      }
      .main-content{
         /* flex: 1; */
         flex: 0 1 80%;   /* content 전체 넓이 중에서 80% 차지 */
         padding: 10px;
         background: #e74c3c;
         color: white;
      }
      .footer{
         /* display: flex; */
         flex: 0 1 auto;   /* 부모로 부터 차지할 높이, 0-한줄 */
         padding: 10px;
         text-align: center;
         background: #f1c40f;
         color: black;
         justify-content: center;
         align-items: center;
      }
      .footer a{
         margin: 0 10px;
         color: black;
         text-decoration: none;
      }
   </style>
</head>
<body>
	<div class = "container">
		<jsp:include page="./include/header.jsp"/>
			<div class= "content">
				<jsp:include page="./include/sidebar.jsp"/>
				<jsp:include page="./include/main.jsp"/>
			</div>
				<jsp:include page="./include/footer.jsp"/>
	
	
	</div>
</body>
</html>