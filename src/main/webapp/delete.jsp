<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page import="Api.ApiDB"%>
<%@page import="Api.HistoryDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		HistoryDto dto = new HistoryDto();
		System.out.println(id + " --" + dto);
		dto.setId(id); 
		
		ApiDB.HistoryDelete(dto); 
	%>

<script> 
		location.href="http://localhost:8080/ZeroBase_Mission_01/history.jsp"
</script> 
</body>
</html>