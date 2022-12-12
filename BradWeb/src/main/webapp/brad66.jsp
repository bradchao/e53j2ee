<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big Company</h1>
		<hr />
		<c:import url="https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvMovingRoad.aspx" var="data"></c:import>
		<%
			String data =  (String)pageContext.getAttribute("data");
			//out.print(data);
			
			JSONArray root = new JSONArray(data);
			out.println(root.length() + "<br />");
			
			for (int i=0; i<root.length(); i++){
				JSONObject row = root.getJSONObject(i);
				out.println(row.getString("Name") + ":" + row.getString("Tel") + "<br />");
			}
			
		
		%>
	</body>
</html>