<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.brad.api.*" %>    
<%
	if (session.getAttribute("member") == null){
		response.sendRedirect("brad80.jsp");
	}
%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Welcome, ${member.realname }
		<hr />
		<a href="logout.jsp">Logout</a>
	</body>
</html>