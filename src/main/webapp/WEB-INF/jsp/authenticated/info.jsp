<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<%@ page import="org.springframework.security.core.context.*" %>
<%@ page import="org.springframework.security.core.userdetails.*" %>
<html>	
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