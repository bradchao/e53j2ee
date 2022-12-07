<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	String r = "";
	
	try{
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int intR = intX + intY;
		r = intR + "";
	}catch(Exception e){
		x = y = r = "";
	}
	
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<form>
			<input name="x" value="<%= x %>" />
			+
			<input name="y" value="<%= y %>" />
			<input type="submit" value="=">
			<%= r %>
		</form>
		
	</body>
</html>