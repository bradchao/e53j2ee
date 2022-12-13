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
			ServletContext context = getServletContext();
			String uploadPath = context.getInitParameter("uploadPath");
			String webName = context.getInitParameter("WebName");
			
			out.println(uploadPath + "<br />");
			out.println(webName + "<br />");
		
		%>		
	</body>
</html>