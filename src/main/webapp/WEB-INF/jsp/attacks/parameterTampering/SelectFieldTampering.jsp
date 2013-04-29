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
	
		<h1>How to Exploit Form Fields</h1>

		<p><b>General Goal(s):</b></p>
		<p>The user will be able to exploit a select field to obtain all users' orders.</p>
		<p>First, by clicking in the 'View Orders' button you will visualize all the orders 
		of the <b>j2ee</b> user.</p>
		<p>Then, you have to set the username parameter to the following value when you post 
		the form: <b>ACID</b></p>
		<form:form action="processListOrdersSelect.html" method="post" commandName="order">
			<p>
				<label for="username">Select Username:</label>
				<form:select path="username">
					<form:option value="j2ee" label="j2ee" />
				</form:select>
			</p>
			<form:button>View Orders</form:button>
		</form:form>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>