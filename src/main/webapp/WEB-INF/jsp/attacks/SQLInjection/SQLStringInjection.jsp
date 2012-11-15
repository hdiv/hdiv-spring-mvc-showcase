<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>SQL Injection Example</title>
		
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		<c:url value="../attacks.html" var="url" />
		<a href="${url}">
			<img src="../../images/back-icon.png" alt="Return to examples page" class="back" />
		</a>
		<h1>How to perform String SQL Injection</h1>

		<p><b>General Goal(s):</b></p>
		<p>The form below allows a user to view account values. Try to inject an SQL string that results 
		in all the accounts being displayed.</p>
		<p>First, you must insert the username <b>ACID</b>. You will only see the data related to the username ACID.</p>
		<p>Then, inserting the value <b>ACID' or '1'='1</b>, you will be able to see all the accounts.</p>
		<form:form action="processSQLStringInjection.html" commandName="account" method="post">
			<form:errors path="*" cssClass="error"/>
			<p>
				<label for="userId">Enter your last name:</label>
				<form:input path="userId" />
				<form:button>GO!</form:button>
			</p>
		</form:form>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>