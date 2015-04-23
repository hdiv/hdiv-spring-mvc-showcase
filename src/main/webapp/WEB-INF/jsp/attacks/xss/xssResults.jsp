<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
	<head>
		<title>XSS Example</title>
		<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
		
		<c:url value="prepareXSS.html" var="url" />
		<a href="${url}">		
			<img src="${pageContext.request.contextPath}/resources/images/back-icon.png" alt="Return to examples page" class="back"/>
		</a>
		
		<h1>XSS Results</h1>
		
		<p><strong>You wrote this message:</strong></p>
		<p>${message}</p>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>
