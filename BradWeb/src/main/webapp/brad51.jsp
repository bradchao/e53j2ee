<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad","Kevin","Vivian","Tony","Amy"};
	//pageContext.setAttribute("names", var1);
	
	String[] var2 = {"Brad2","Kevin2","Vivian2","Tony2","Amy2"};
	//request.setAttribute("names", var2);

	String[] var3 = {"Brad3","Kevin3","Vivian3","Tony3","Amy3"};
	//session.setAttribute("names", var3);

	String[] var4 = {"Brad4","Kevin4","Vivian4","Tony4","Amy4"};
	application.setAttribute("names", var4);
	
	LinkedList<String> list = new LinkedList<>();
	list.add("A");list.add("B");list.add("C");list.add("C");
	pageContext.setAttribute("list", list);
	
	HashMap<String,String> map = new HashMap<>();
	map.put("k1", "v1"); map.put("k2", "v2"); map.put("k3", "v3");
	pageContext.setAttribute("map", map);

%>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		pageContext.names[2]: ${pageScope.names[2] }<br />
		request.names[2]: ${requestScope.names[2] }<br />
		session.names[2]: ${sessionScope.names[2] }<br />
		application.names[2]: ${applicationScope.names[2] }<br />
		<hr />
		${names[2] }<br />
		${list[param.i] }<br />
		${map["k2"] }<br />
		${map.k2 }<br />
		${10 + 3 }<br />
		${param.x + param.y }<br />
		${param.x == 10 }
		
	</body>
</html>