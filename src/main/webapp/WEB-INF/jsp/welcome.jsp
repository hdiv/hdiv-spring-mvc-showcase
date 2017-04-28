<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>

<head>
	<title>Hdiv-Spring-Mvc-Showcase</title>
	<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
</head>

<body>
	<h1>Hdiv Spring Mvc Showcase</h1>

	<p>These modules follow the "learn by example" school. Be sure to
		"look under the hood" to see how it's done.</p>

	<!-- For the sake of example, use the page form with this set of links: -->

	<h2>
		<c:url value="/attacks/attacks.html" var="url" />
		<a href="${url}">Vulnerable Example Section</a>
	</h2>
	<p>This section is a demonstration of common web application flaws.
		These exercises show how easily can penetration techniques be applied.</p>

	<h2>
		<c:url value="/secure/attacks.html" var="url" />
		<a href="${url}">Vulnerable Example Section resolved by HDIV </a>
	</h2>
	<p>This section is a demonstration of common web application flaws
		but they are resolved by HDIV.</p>

	<h2>
		<c:url value="/authenticated/info.html" var="url" />
		<a href="${url}">Authenticated Section </a>
	</h2>
	<p>Application authenticated zone. Secured with Spring Security.</p>

	<h2>
		<c:url value="/fileupload/fileupload.html" var="url" />
		<a href="${url}">File Upload Example Section </a>
	</h2>
	<p>File Upload example form.</p>

	<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>
