<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Parameter Tampering Example</title>
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		<c:url value="../attacks.html" var="url" />
		<a href="${url}">
			<img src="../../images/back-icon.png" alt="Return to examples page" class="back" />
		</a>
	
		<h1>How to Exploit Link Parameters</h1>

		<p><b>General Goal(s):</b></p>
		<p>The user will be able to exploit a link parameter to obtain all users' orders.</p>
		<p>First, by clicking in the link you will visualize all the orders 
		of the <b>j2ee</b> user.</p>
		<p>Then, you have to set the username link parameter value to to <b>ACID</b> to view his orders.</p>
		<c:url value="processListOrdersLink.html" var="url">
			<c:param name="username" value="j2ee" />
		</c:url>
		<a href="${url}">
			View Orders
		</a>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>