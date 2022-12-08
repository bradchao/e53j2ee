<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Account: ${param.account }<br />
		A: ${paramValues.habbit[0] }<br />
		B: ${paramValues.habbit[1] }<br />
		C: ${paramValues.habbit[2] }<br />
		D: ${paramValues.habbit[3] }<br />
		E: ${paramValues.habbit[4] }<br />
		F: ${paramValues.habbit[5] }<br />
		<hr />
		Method: <%= request.getMethod() %><br />
		Method: ${pageContext.request.method }<br />
		ip :<%= request.getRemoteAddr() %><br />
		ip : ${pageContext.request.remoteAddr }<br />
		Locale: <%= request.getLocale() %><br />
		Locale: ${pageContext.request.locale }<br />
		Language: <%= request.getLocale().getDisplayLanguage() %><br />
		Language: ${pageContext.request.locale.displayLanguage }<br />
		
		
		
		
		
	</body>
</html>