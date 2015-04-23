<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
	<head>
		<title>SQL Injection Example</title>
		<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
	</head>
	<body>
		<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
		<c:url value="prepareSQLInjection.html" var="url" />
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/back-icon.png" alt="Return to SQL String Injection page" class="back" />
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
					<td><c:out value="${account.userId}"/></td>			
					<td><c:out value="${account.email}"/></td>			
					<td><c:out value="${account.firstName}"/></td>
					<td><c:out value="${account.lastName}"/></td>					
					<td><c:out value="${account.status}"/></td>
					<td><c:out value="${account.address1}"/></td>
					<td><c:out value="${account.address2}"/></td>
					<td><c:out value="${account.city}"/></td>
					<td><c:out value="${account.state}"/></td>
					<td><c:out value="${account.zip}"/></td>
					<td><c:out value="${account.country}"/></td>
					<td><c:out value="${account.phone}"/></td>										
				</tr>
			</c:forEach>
		</table>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>