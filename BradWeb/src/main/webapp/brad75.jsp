<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="brad" %>
<%@ taglib uri="/WEB-INF/mytags.tld" prefix="iii" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<brad:test1 />
		<hr />
		<brad:test2 />
		<hr />
		<table border="1" width="100%">
			<tr>
				<th>Name</th>
				<th>Price</th>
			</tr>
			<brad:test3 name="Notebook" price="1000" />
			<brad:test3 name="Mouse" price="10" />
			<brad:test3 name="Camera" price="3000" />
			<brad:test3 name="iPhone" price="5000" />
		</table>
		<hr />
		<iii:Lottery/>
		<hr />
		<iii:mytag2>
			brad<br>
			ok<br>
			1234567
		</iii:mytag2>
	</body>
</html>