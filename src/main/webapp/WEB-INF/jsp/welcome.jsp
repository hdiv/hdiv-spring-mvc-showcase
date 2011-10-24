<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>HDIV-Spring-Mvc-Showcase</title>
<link rel="stylesheet" type="text/css" href="./css/example.css" />
</head>

<body>
	<h1>HDIV Spring Mvc Showcase</h1>

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
		<a href="${url}">
		Vulnerable Example Section resolved by HDIV
		</a>
	</h2>
	<p>This section is a demonstration of common web application flaws
		but they are resolved by HDIV.</p>
	<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>
