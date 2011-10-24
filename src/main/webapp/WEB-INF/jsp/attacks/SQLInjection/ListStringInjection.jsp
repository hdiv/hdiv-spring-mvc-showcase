<%@ page contentType="text/html; charset=ISO-8859-1" language="java" errorPage="" %>

<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>SQL Injection Example</title>
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
		<c:url value="prepareSQLInjection.html" var="url" />
		<a href="${url}">
			<img src="../../images/back-icon.png" alt="Return to SQL String Injection page" class="back" />
		</a>
	
		<h1>User account</h1>
		<hr noshade="noshade"/>
			
		<table align="center" border="1" cellspacing="2">
			<tr bgcolor="#CCCCCC">
				<td><b>Account</b></td>
				<td><b>email</b></td>
				<td><b>First Name</b></td>
				<td><b>Last Name</b></td>
				<td><b>Status</b></td>
				<td><b>Adress 1</b></td>
				<td><b>Adress 2</b></td>
				<td><b>City</b></td>
				<td><b>State</b></td>
				<td><b>Zip</b></td>
				<td><b>Country</b></td>
				<td><b>Phone</b></td>
			</tr>		
			
			<c:forEach items="${userAccounts}" var="account">
				<tr align="center"> 
					<td>${account.userId}</td>			
					<td>${account.email}</td>			
					<td>${account.firstName}</td>
					<td>${account.lastName}</td>					
					<td>${account.status}</td>
					<td>${account.address1}</td>
					<td>${account.address2}</td>
					<td>${account.city}</td>
					<td>${account.state}</td>
					<td>${account.zip}</td>
					<td>${account.country}</td>
					<td>${account.phone}</td>										
				</tr>
			</c:forEach>
		</table>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>