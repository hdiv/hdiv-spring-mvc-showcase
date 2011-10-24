<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">	
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
		<hr noshade="noshade"/>

		<center><font size="4"><b>"My" Orders</b></font></center>
		<table align="center" border="1" cellspacing="2">
			<tr bgcolor="#CCCCCC">
				<td><b>Order ID</b></td>
				<td><b>User ID</b></td>
				<td><b>Order Date</b></td>				
				<td><b>Ship Adress 1</b></td>
				<td><b>Ship Adress 2</b></td>				
				<td><b>Ship City</b></td>
				<td><b>Ship State</b></td>
				<td><b>Ship Zip</b></td>
				<td><b>Ship Country</b></td>
				<td><b>Creadit Card</b></td>
				<td><b>Expiry Date</b></td>
				<td><b>Card type</b></td>
			</tr>
			<c:forEach items="${orderList}" var="order">
				<tr align="center"> 
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