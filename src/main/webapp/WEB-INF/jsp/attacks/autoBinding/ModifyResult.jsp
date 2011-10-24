<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>Spring Examples</title>
	<link rel="stylesheet" type="text/css" href="../../css/example.css" />
</head>

<body>

	<c:url value="processAutoBinding.html" var="url">
		<c:param name="username" value="j2ee" />
	</c:url>
	<a href="${url}">
		<img src="../../images/back-icon.png" alt="Return to Auto Binding page" class="back" />
	</a>

	<h1>MODIFICATION SUCCESS</h1>
	<hr noshade="noshade" />

	<p>Modification done.</p>
	
	<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>
