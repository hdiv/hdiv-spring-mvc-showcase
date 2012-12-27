<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>File Upload</title>
		<link rel="stylesheet" type="text/css" href="../css/example.css" />
	</head>
	<body>
		<c:url value="/welcome.html" var="url" />
		<a href="${url}">			
			<img src="../images/back-icon.png"  alt="Return to examples page" class="back" />
		</a>
	
		<h1>File Upload Examples</h1>

		<!--  Simple example -->		
		<h2><a href="#" class="link">Simple Example</a></h2>
		<p>Simple Fileupload form Example with one field of type 'file'.</p>

		<spring:url value="simple.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			Simple FileUpload Example
		</a>
		<br />

		<!--  Form binding examples -->
		<h2><a href="#" class="link">Form binding Example</a></h2>
		<p>Fileupload Form Example with binding of 'file', editable and not editable fields.</p>

		<spring:url value="binding.html" var="url" />
		<a href="${url}">
			<img src="../images/Play.png" class="play" />
			Form binding Example
		</a>
		
		<br />
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>