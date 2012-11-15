<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>SQL Injection Example</title>
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		<c:url value="prepareHiddenFieldTampering.html" var="url" />
		<a href="${url}">
			<img src="../../images/back-icon.png" alt="Return to hidden field tampering page" class="back" />
		</a>
		
		<h1>How to Exploit Hidden Fields</h1>

		<h2 class="subtitle">"My" Orders</h2>
		<table>
			<tr>
				<th>Order ID</th>
				<th>User ID</th>
				<th>Order Date</th>				
				<th>Ship Adress 1</th>
				<th>Ship Adress 2</th>				
				<th>Ship City</th>
				<th>Ship State</th>
				<th>Ship Zip</th>
				<th>Ship Country</th>
				<th>Creadit Card</th>
				<th>Expiry Date</th>
				<th>Card type</th>
			</tr>
			<c:forEach items="${orderList}" var="order">
				<tr> 
					<td>${order.orderId}</td>
					<td>${order.username}</td>
					<td>${order.orderDate}</td>					
					<td>${order.shipAddress1}</td>
					<td>${order.shipAddress2}</td>
					<td>${order.shipCity}</td>
					<td>${order.shipState}</td>
					<td>${order.shipZip}</td>
					<td>${order.shipCountry}</td>					
					<td>${order.creditCard}</td>
					<td>${order.expiryDate}</td>
					<td>${order.cardType}</td>										
				</tr>
			</c:forEach>
		</table>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>