<%@ page contentType="text/html; charset=ISO-8859-1" language="java" errorPage="" %>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Auto Binding</title>
		<link rel="stylesheet" type="text/css" href="../../../../css/example.css" />
	</head>
	<body>
		
		<c:url value="../../processAutoBinding.html" var="url">
			<c:param name="username" value="j2ee"/>
		</c:url>
		<a href="${url}">
			<img src="../../../../images/back-icon.png" alt="Return to Auto Binding page" class="back" />
		</a>
	
		<h1>Modify Order</h1>
		<hr noshade="noshade"/>
			
		<center><font size="5"><b>${order.username}'s  ${order.orderId}  Order</b></font></center>
		<br></br>
		<form:form action="../../updateAutoBinding.html" commandName="order">
		
			<table align="center" border="0" cellspacing="10">				
				<tr>
					<td ><b>Order Date:</b></td>
					<td> <i>${order.orderDate}</i></td>
				</tr>				
				<tr>
					<td ><b>Ship Address 1:</b></td>
					<td><form:input path="shipAddress1"/></td>
				</tr>
				<tr>
					<td ><b>Ship Address 2:</b></td>
					<td><form:input path="shipAddress2"/></td>
				</tr>				
				<tr>
					<td ><b>Ship City:</b></td>
					<td><form:input path="shipCity"/></td>
				</tr>
				<tr>
					<td ><b>Ship State:</b></td>
					<td><form:input path="shipState"/></td>
				</tr>
				<tr>
					<td ><b>Ship Zip:</b></td>
					<td><form:input path="shipZip"/></td>
				</tr>
				<tr>
					<td ><b>Ship Country:</b></td>
					<td><form:input path="shipCountry"/></td>
				</tr>
				<tr>
					<td ><b>Credit Card:</b></td>
					<td><form:input path="creditCard"/></td>
				</tr>
				<tr>
					<td ><b>Expire Date:</b></td>
					<td><form:input path="expiryDate"/></td>
				</tr>
				<tr>
					<td ><b>Card type:</b></td>
					<td><form:input path="cardType"/></td>
				</tr>
			</table>
			<center>
			<br/>
			<p>Once the form is posted, create the attribute <b>paid</b> and set it to <b>"true"</b>. This will cause the order to figure as paid.</p>
			<br/>
			
			<form:button>Save</form:button>
			</center>
			<form:hidden path="username"></form:hidden>
			<form:hidden path="orderId"></form:hidden>
		</form:form>
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>