<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Auto Binding</title>
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		
		<c:url value="prepareAutoBinding.html" var="url" />
		<a href="${url}">
			<img src="../../images/back-icon.png" alt="Return to SQL String Injection page" class="back" />
		</a>
	
		<h1>User Orders</h1>
			
		<h2 class="subtitle">My Unpaid Orders</h2>
		<table>
			<tr>
				<th>Order ID</th>
				<th>User ID</th>
				<th>Order Date</th>				
				<th>Ship Address 1</th>
				<th>Ship Address 2</th>				
				<th>Ship City</th>
				<th>Ship State</th>
				<th>Ship Zip</th>
				<th>Ship Country</th>
				<th>Credit Card</th>
				<th>Expire Date</th>
				<th>Card type</th>
				<th></th>
			</tr>
			<c:forEach items="${orderList}" var="order">
				<tr> 
					<td><c:out value="${order.orderId}"/></td>
					<td><c:out value="${order.username}"/></td>
					<td><c:out value="${order.orderDate}"/></td>					
					<td><c:out value="${order.shipAddress1}"/></td>
					<td><c:out value="${order.shipAddress2}"/></td>
					<td><c:out value="${order.shipCity}"/></td>
					<td><c:out value="${order.shipState}"/></td>
					<td><c:out value="${order.shipZip}"/></td>
					<td><c:out value="${order.shipCountry}"/></td>					
					<td><c:out value="${order.creditCard}"/></td>
					<td><c:out value="${order.expiryDate}"/></td>
					<td><c:out value="${order.cardType}"/></td>	
					<td>
						<c:url value="modifyAutoBinding.html" var="url">
							<c:param name="userId" value="${order.username}"/>
							<c:param name="orderId" value="${order.orderId}"/>
						</c:url>
						<a href="${url}">
							<img src="../../images/modify.png" title="Modify" alt="Modify" class="icon" />
						</a>
					</td>									
				</tr>
			</c:forEach>
		</table>
		<br/><br/>
		
		<h2 class="subtitle">My Paid Orders</h2>
		<table>
			<tr>
				<th>Order ID</th>
				<th>User ID</th>
				<th>Order Date</th>				
				<th>Ship Address 1</th>
				<th>Ship Address 2</th>				
				<th>Ship City</th>
				<th>Ship State</th>
				<th>Ship Zip</th>
				<th>Ship Country</th>
				<th>Credit Card</th>
				<th>Expire Date</th>
				<th>Card type</th>
			</tr>
			<c:forEach items="${paidOrderList}" var="paidOrder">
				<tr> 
					<td><c:out value="${paidOrder.orderId}"/></td>
					<td><c:out value="${paidOrder.username}"/></td>
					<td><c:out value="${paidOrder.orderDate}"/></td>					
					<td><c:out value="${paidOrder.shipAddress1}"/></td>
					<td><c:out value="${paidOrder.shipAddress2}"/></td>
					<td><c:out value="${paidOrder.shipCity}"/></td>
					<td><c:out value="${paidOrder.shipState}"/></td>
					<td><c:out value="${paidOrder.shipZip}"/></td>
					<td><c:out value="${paidOrder.shipCountry}"/></td>					
					<td><c:out value="${paidOrder.creditCard}"/></td>
					<td><c:out value="${paidOrder.expiryDate}"/></td>
					<td><c:out value="${paidOrder.cardType}"/></td>															
				</tr>
			</c:forEach>
		</table>
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>