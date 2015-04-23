<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
<head>
	<title>Simple form using ActionForm</title>
	<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
</head>
<body>
	<c:url value="../attacks.html" var="url" />
	<a href="${url}">
		<img src="${pageContext.request.contextPath}/resources/images/back-icon.png" alt="Return to examples page" class="back" />
	</a>
	<h1>Simple form using ActionForm</h1>
	
	<p>Enter information into the field below. Your entries will be displayed when you Submit the form.</p>
	
	<form:form action="processXSS.html" commandName="message" method="post">
		<form:errors path="*" cssClass="error"/>

		<p><b>General Goal(s):</b></p>
		<p>The user can perform reflected XSS attacks. To do this, insert the following string:
		<b>&lt;script&gt;alert('If you see this you have a potential vulnerability');&lt;/script&gt;</b>	
		</p>
		<p>Enter a message (you may use html tags):<br />
			<form:textarea path="msgText" cols="40" rows="6" ></form:textarea>		
		</p>
		<p>
		<form:button>Submit</form:button>
		</p>
	</form:form>
	
	<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>
