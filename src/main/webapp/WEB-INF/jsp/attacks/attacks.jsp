<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>	
	<head>
		<title>Vulnerable Section</title>
		<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
	</head>
	<body>
		<c:url value="/welcome.html" var="url" />
		<a href="${url}">			
			<img src="${pageContext.request.contextPath}/resources/images/back-icon.png"  alt="Return to examples page" class="back" />
		</a>
		
		<c:if test="${fn:contains(requestScope['javax.servlet.forward.request_uri'],'/attacks/')}">
			<h1>Vulnerable Section</h1>
		</c:if>
		<c:if test="${fn:contains(requestScope['javax.servlet.forward.request_uri'],'/secure/')}">
			<h1>Secured Section</h1>
		</c:if>

		<!--  Injection Flaws examples -->		
		<%@include file="SQLInjection/SQLInjection.html" %>		

		<spring:url value="SQLInjection/prepareSQLInjection.html" var="url" />
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/Play.png" class="play" />
			How to perform String SQL Injection
		</a>
		<br />

		<!--  Parameter Tampering examples -->
		<%@include file="parameterTampering/ParameterTampering.html" %>

		<spring:url value="parameterTampering/prepareSelectFieldTampering.html" var="url" />
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/Play.png" class="play" />
			How to Exploit Select Form fields
		</a>
		<br />
		<spring:url value="parameterTampering/prepareHiddenFieldTampering.html" var="url" />
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/Play.png" class="play" />
			How to Exploit Hidden Form fields
		</a>
		<br />
		<spring:url value="parameterTampering/prepareLinkTampering.html" var="url" />
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/Play.png" class="play" />
			How to Exploit Link Parameters
		</a>
		<br />

		<!--  Cross Site Scripting (XSS) -->
		<%@include file="xss/XSS.html" %>

		<spring:url value="xss/prepareXSS.html" var="url" />
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/Play.png" class="play" />
			How to Perform Cross Site Scripting (XSS)
		</a><br />
		
		<!--  Auto-Binding -->
		<%@include file="autoBinding/AutoBindingExplain.html" %>
		<spring:url value="autoBinding/prepareAutoBinding.html" var="url" />
		<a href="${url}">
			<img src="${pageContext.request.contextPath}/resources/images/Play.png" class="play" />
			How to Perform an Auto Binding Injection
		</a>
		<br />
		<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
	</body>
</html>