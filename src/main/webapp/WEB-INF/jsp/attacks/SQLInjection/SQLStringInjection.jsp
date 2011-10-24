<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">	
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>SQL Injection Example</title>
		
		<link rel="stylesheet" type="text/css" href="../../css/example.css" />
	</head>
	<body>
		<c:url value="../attacks.html" var="url" />
		<a href="${url}">
			<img src="../../images/back-icon.png" alt="Return to examples page" class="back" />
		</a>
		<h1>How to perform String SQL Injection</h1>
		<hr noshade="noshade"/>

		<p><b>General Goal(s):</b></p>
		The form below allows a user to view account values. Try to inject an SQL string that results 
		in all the accounts being displayed.<br>
		<p>First, you must insert the username <b>ACID</b>. You will only see the data related to the username ACID.</p>
		<p>Then, inserting the value <b>ACID' or '1'='1</b>, you will be able to see all the accounts.</p>
		<form:form action="processSQLStringInjection.html" commandName="account" method="post">
			<form:errors path="*" cssClass="error"/>
			<br/>
			<label>Enter your last name:
				<form:input path="userId" />
			</label>
			<form:button>GO!</form:button>
		</form:form>
		</p>
		
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>