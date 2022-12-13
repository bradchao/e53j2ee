<%@page import="java.util.Date"%>
<%@page import="javax.xml.crypto.Data"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			Locale locale = request.getLocale();
			String ll = locale.getLanguage();
			String cc = locale.getCountry();
			String lang = ll + "_" + cc;
			pageContext.setAttribute("lang", lang);
		%>
		Country: ${pageContext.request.locale.country }<br />
		Country: <%= locale.getDisplayCountry() %><br />
		Language: <%= locale.getLanguage() %><br />
		Language: <%= locale.getDisplayLanguage() %><br />
		<hr />
		<fmt:setLocale value="${lang }" />
		<fmt:setBundle basename="res"/>
		<h1><fmt:message key="companyName" /></h1>
		<hr />
		<fmt:message key="hello" />,<fmt:message key="world" />
		<hr />
		<%
			Date now = new Date();
			out.print(now);
			pageContext.setAttribute("now", now);
		%>
		<hr />
		<fmt:setTimeZone value="Asia/Taipei"/>
		<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr />
		<fmt:setTimeZone value="Asia/Tokyo"/>
		<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr />
		<fmt:setTimeZone value="Europe/Berlin"/>
		<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss"/>
		<hr />
		<fmt:setLocale value="de_de"/>		
		<fmt:formatNumber value="1234567.123456" 
			type="currency" currencyCode="EUR" />
		
	</body>
</html>