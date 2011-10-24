<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=utf-8"%>

<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>XSS Example</title>
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
		
		<c:url value="/attacks/xss/prepareXSS.html" var="url" />
		<a href="${url}">		
			<img src="../../images/back-icon.png" alt="Return to examples page" class="back"/>
		</a>
		
		<h1>XSS Results</h1>
		<hr noshade="noshade" />
		
		<p><strong>You wrote this message:</strong></p>
		<p>${message}</p>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>
