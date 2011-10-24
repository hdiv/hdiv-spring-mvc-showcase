<%@ page contentType="text/html; charset=ISO-8859-1" language="java" errorPage="" %>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">	
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
		<hr noshade="noshade"/>
			
		<center><font size="4"><b>My Unpaid Orders</b></font></center>
		<table align="center" border="1" cellspacing="2">
			<tr bgcolor="#CCCCCC">
				<td><b>Order ID</b></td>
				<td><b>User ID</b></td>
				<td><b>Order Date</b></td>				
				<td><b>Ship Address 1</b></td>
				<td><b>Ship Address 2</b></td>				
				<td><b>Ship City</b></td>
				<td><b>Ship State</b></td>
				<td><b>Ship Zip</b></td>
				<td><b>Ship Country</b></td>
				<td><b>Credit Card</b></td>
				<td><b>Expire Date</b></td>
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
					<td bordercolor="white" style="border: 0px;">
						<c:url value="modifyAutoBinding/${order.username}/${order.orderId}.html" var="url" />
						<a href="${url}">
							<img src="../../images/modify.png" width="24" height="24" title="Modify" alt="Modify" class="icon" />
						</a>
					</td>									
				</tr>
			</c:forEach>
		</table>
		<br/><br/>
		<center><font size="4"><b>My Paid Orders</b></font></center>
		<table align="center" border="1" cellspacing="2">
			<tr bgcolor="#CCCCCC">
				<td><b>Order ID</b></td>
				<td><b>User ID</b></td>
				<td><b>Order Date</b></td>				
				<td><b>Ship Address 1</b></td>
				<td><b>Ship Address 2</b></td>				
				<td><b>Ship City</b></td>
				<td><b>Ship State</b></td>
				<td><b>Ship Zip</b></td>
				<td><b>Ship Country</b></td>
				<td><b>Credit Card</b></td>
				<td><b>Expire Date</b></td>
				<td><b>Card type</b></td>
			</tr>
			<c:forEach items="${paidOrderList}" var="paidOrder">
				<tr align="center"> 
					<td>${paidOrder.orderId}</td>
					<td>${paidOrder.username}</td>
					<td>${paidOrder.orderDate}</td>					
					<td>${paidOrder.shipAddress1}</td>
					<td>${paidOrder.shipAddress2}</td>
					<td>${paidOrder.shipCity}</td>
					<td>${paidOrder.shipState}</td>
					<td>${paidOrder.shipZip}</td>
					<td>${paidOrder.shipCountry}</td>					
					<td>${paidOrder.creditCard}</td>
					<td>${paidOrder.expiryDate}</td>
					<td>${paidOrder.cardType}</td>															
				</tr>
			</c:forEach>
		</table>
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>