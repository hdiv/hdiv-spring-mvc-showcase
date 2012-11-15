<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
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
			
		<table>
			<tr>
				<th>Account</th>
				<th>email</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Status</th>
				<th>Adress 1</th>
				<th>Adress 2</th>
				<th>City</th>
				<th>State</th>
				<th>Zip</th>
				<th>Country</th>
				<th>Phone</th>
			</tr>		
			
			<c:forEach items="${userAccounts}" var="account">
				<tr> 
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