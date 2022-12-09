<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/eeit53"
		user="root"
		password="root" 
		/>
	<sql:query var="rs">
		SELECT * FROM food
	</sql:query>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		資料筆數: ${rs.rowCount }
		<hr />
		<table border="1" width="100%">
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Tel</th>
				<th>City</th>
				<th>Town</th>
				<th>Photo</th>
			</tr>
			<c:forEach items="${rs.rows }" var="row">
				<tr>
					<td>${row.id }</td>
					<td>${row.name }</td>
					<td>${row.tel }</td>
					<td>${row.city }</td>
					<td>${row.town }</td>
					<td><img src="${row.picurl }" width="100px" height="60px" /></td>
				</tr>
			</c:forEach>
		</table>
		
	</body>
</html>