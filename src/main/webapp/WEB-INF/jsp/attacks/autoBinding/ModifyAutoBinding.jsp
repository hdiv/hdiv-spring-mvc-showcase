<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
	<head>
		<title>Auto Binding</title>
		<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
	</head>
	<body>
		
		<c:url value="processAutoBinding.html" var="url">
			<c:param name="username" value="j2ee"/>
		</c:url>
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/back-icon.png" alt="Return to Auto Binding page" class="back" />
		</a>
	
		<h1>Modify Order</h1>
			
		<h2 class="subtitle"><c:out value="${order.username}"/>'s  <c:out value="${order.orderId}"/>  Order</h2>

		<form:form action="updateAutoBinding.html" commandName="order">
		
			<fieldset>
				<form:errors path="*" cssClass="error"/>
				<p>
					<label>Order Date:</label>
					<c:out value="${order.orderDate}"/>
				</p>
				<p>
					<label for="shipAddress1">Ship Address 1:</label>
					<form:input path="shipAddress1"/>
				</p>
				<p>
					<label for="shipAddress2">Ship Address 2:</label>
					<form:input  path="shipAddress2"/>
				</p>
				<p>
					<label for="shipCity">Ship City:</label>
					<form:input path="shipCity"/>
				</p>
				<p>
					<label for="shipState">Ship State:</label>
					<form:input path="shipState"/>
				</p>
				<p>
					<label for="shipZip">Ship Zip:</label>
					<form:input path="shipZip"/>
				</p>
				<p>
					<label for="shipCountry">Ship Country:</label>
					<form:input path="shipCountry"/>
				</p>
				<p>
					<label for="creditCard">Credit Card:</label>
					<form:input path="creditCard"/>
				</p>
				<p>
					<label for="expiryDate">Expire Date:</label>
					<form:input path="expiryDate"/>
				</p>
				<p>
					<label for="cardType">Card type:</label>
					<form:input path="cardType"/>
				</p>
			</fieldset>
		
			<div class="centerText">
				<p>Once the form is posted, create the attribute <b>paid</b> and set it to <b>"true"</b>. This will cause the order to figure as paid.</p>
				
				<form:button>Save</form:button>
			</div>
			<form:hidden path="username"></form:hidden>
			<form:hidden path="orderId"></form:hidden>
		</form:form>
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>