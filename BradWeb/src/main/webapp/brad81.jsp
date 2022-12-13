<%@page import="tw.brad.api.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	
	if (account.equals("brad") && passwd.equals("123456")){
		Member member = new Member();
		member.setId(1); 
		member.setAccount("brad"); 
		member.setRealname("Brad");
		session.setAttribute("member", member);
		response.sendRedirect("brad82.jsp");
	}else{
		session.invalidate();
		response.sendRedirect("brad80.jsp");
	}
	
%>