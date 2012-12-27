<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>File Upload</title>
		<link rel="stylesheet" type="text/css" href="../css/example.css" />
	</head>
	<body>
		
		<c:url value="fileupload.html" var="url" />
		<a href="${url}">			
			<img src="../images/back-icon.png"  alt="Return to examples page" class="back" />
		</a>
		<h1>File Upload Example</h1>
		
		<form:form action="simple.html" method="POST" enctype="multipart/form-data">
			<fieldset>
				<c:if test="${not empty message}">
					<div id="message" class="success">${message}</div>	  		
			  	</c:if>
				<p>
					<label for="file">Select a file:</label>
					<input id="file" type="file" name="file" />
				</p>
			</fieldset>
		
			<div class="centerText">
				<p><button type="submit">Upload</button></p>		
			</div>
		</form:form>
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>