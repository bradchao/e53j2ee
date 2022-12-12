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
	SELECT * FROM member
	</sql:query>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Brad Big Company</h1>
		<hr />
		<a href="brad62.jsp">Add New Member</a>
		<hr />
		<table border="1" width="100%">
			<tr>
				<th>#</th>
				<th>Account</th>
				<th>Realname</th>
			</tr>
			<c:forEach items="${rs.rows }" var="row">
				<tr>
					<td>${row.id }</td>
					<td>${row.account }</td>
					<td>${row.realname }</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>