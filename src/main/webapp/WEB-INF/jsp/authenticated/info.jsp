<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<%@ page import="org.springframework.security.core.context.*" %>
<%@ page import="org.springframework.security.core.userdetails.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Authenticated Section</title>
		<link rel="stylesheet" type="text/css" href="../css/example.css" />
	</head>
	<body>
		<c:url value="/welcome.html" var="url" />
		<a href="${url}">			
			<img src="../images/back-icon.png"  alt="Return to examples page" class="back" />
		</a>
	
		<h1>Authenticated Section</h1>
		<hr noshade="noshade"/>

		<h2>User Data</h2>
		Username:
		<% 
		User user = (User) ((SecurityContext) SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
		out.println(user.getUsername());
		%>
		
		<p>
		<c:url value="/logout.html" var="url" />
		<a href="${url}">Logout</a>
		</p>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>