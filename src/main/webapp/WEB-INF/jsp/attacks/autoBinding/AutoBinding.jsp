<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Auto Binding</title>
		
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		
		<c:url value="../attacks.html" var="url" />
		<a href="${url}">
			<img src="../../images/back-icon.png" class="back" />
		</a>
		<h1>How to perform Auto Binding</h1>
		<hr noshade="noshade"/>
		
		<p><b>General Goal(s):</b></p>
		<p>The user will be able to exploit a field that does not exist in the form but it does in the command. Then, Spring will make an auto binding and fill the commands field, sending it to the controller as it was a form field.</p>		
		<p>First, by clicking in the 'View Unpaid Orders' button you will visualize all the unpaid orders 
		of the <b>j2ee</b> user.</p>
		<p>Then, one can modify some data of the order.</p>
		<p>Once the form is posted, one can create the attribute <b>paid</b> and set it to <b>"true"</b>. This will cause the order to figure as paid.</p>
		<c:url value="processAutoBinding.html" var="url">
			<c:param name="username" value="j2ee"/>
		</c:url>
		<button onclick="javascript:window.location='${url}'">
		View Unpaid Orders
		</button>
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>