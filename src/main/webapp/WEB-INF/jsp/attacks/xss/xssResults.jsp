<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>XSS Example</title>
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
		
		<c:url value="prepareXSS.html" var="url" />
		<a href="${url}">		
			<img src="../../images/back-icon.png" alt="Return to examples page" class="back"/>
		</a>
		
		<h1>XSS Results</h1>
		
		<p><strong>You wrote this message:</strong></p>
		<p>${message}</p>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>
