<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String method = request.getMethod();
		
			ServletRequest sr = pageContext.getRequest();
			if (sr instanceof HttpServletRequest) out.print("OK2");
			
			if (sr == request) out.print("OK3");
		%>
	</body>
</html>