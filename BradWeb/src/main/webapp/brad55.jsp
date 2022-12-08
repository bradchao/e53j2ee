<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="x" value="10" /> <!-- pageContext x = 10 -->
<c:set var="x" value="123" scope="request"/> <!-- request x = 123 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Page: ${x }<br />
		Request: ${requestScope.x }<br />
		<c:out value="Hello, World"/><br />
		<%= "Hello, World" %><br />
		<c:out value="${x }"></c:out><br />
		<c:out value="${param.i }" default="novalue"/><br />
		
		<jsp:useBean id="member" class="tw.brad.api.Member"></jsp:useBean>
		<c:set target="${member }" property="id">1</c:set>		
		<c:set target="${member }" property="account">Brad</c:set>		
		<c:set target="${member }" property="realname">BradChao</c:set>
		${member.id }:${member.account }:${member.realname }<br />	
		${member }
		<hr />	
		<c:remove var="member"/>
		${member }
		
		
		
		
		
		
		
		
		
	</body>
</html>