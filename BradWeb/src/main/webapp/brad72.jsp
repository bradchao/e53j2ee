<%@page import="org.json.JSONArray"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	{
		error : 0,	// 0: OK, other: error
		page : n,
		data : [
		        {
		        	name : xxx,
		        	address : xxx
		        },
		        {
		        	name : xxx,
		        	address : xxx
		        },
		        {
		        	name : xxx,
		        	address : xxx
		        }
			]
	}
	*/
	int p = Integer.parseInt(request.getParameter("page"));

	JSONObject obj = new JSONObject();
	if (p<=0){
		obj.put("error", 1);
		obj.put("page", p);
		out.print(obj.toString());
		return;
	}
	if (p>10){
		obj.put("error", 1);
		obj.put("page", p);
		out.print(obj.toString());
		return;
	}
	
	obj.put("error", 0);
	obj.put("page", p);
	
	JSONArray ary = new JSONArray();
	for (int i=0; i<10; i++){
		JSONObject row = new JSONObject();
		row.put("name", "Name:" + (int)(Math.random()*100));
		row.put("address", "Addr:" + (int)(Math.random()*100));
		ary.put(row);
	}
	
	obj.put("data", ary);
	out.print(obj.toString());
	
%>