<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
<head>
	<title>Spring Examples</title>
	<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
</head>

<body>

	<c:url value="processAutoBinding.html" var="url">
		<c:param name="username" value="j2ee" />
	</c:url>
	<a href="${url}">
		<img src="${pageContext.request.contextPath}/resources/images/back-icon.png" alt="Return to Auto Binding page" class="back" />
	</a>

	<h1>MODIFICATION SUCCESS</h1>

	<p>Modification done.</p>
	
	<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>
