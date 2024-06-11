<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>source.jsp</title>
</head>
<body>
	<pre>
		use:forward 액션 태그 테스트 예제
		1. 제어를 다른 페이지로 이동시킨다. 즉 다른 페이지로 이동한다.
		2. 이 페에지의 내용은 웹브라우저에 나오지 않는다. 
			forward 페이지로 이동하기 전에 현재 페이지에서
			생성되어 버퍼에 저장되었던 내용을 버리기 때문이다. 
			
	 	3. jsp:forward 액션 태그 뒤에 오는 코드는 실행되지 않는다. 
	 	4. use:forward 액션 태그 의 단점은 현재 페이지의 URL주소가 아니라
	 		이동해 간 페이지의 주소가 표시된다는 것이다.
	 	5. jsp:param 자식 태그를 통해서 이동해간 곳으로 파라미터를 전달할 수 있다. 
	</pre>
	
	
	<jsp:forward page="target.jsp">
		<jsp:param name="param1" value="1234" />
		<jsp:param name="param2" value="abcd" />
	</jsp:forward>	
	
	
</body>
</html>