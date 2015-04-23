<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
<head>
	<title>Login</title>
	<%@ include file="/WEB-INF/jsp/template/head.jsp"%>
</head>

<body onload='document.f.j_username.focus();'>
	<h1>Login with Username and Password</h1>
	
	Use the folowing username and password:
	<ul>
		<li>david:david</li>
		<li>alex:alex</li>
		<li>tim:tim</li>
	</ul>
	
	<form name='f' action='' method='post'>
		<fieldset>
			<c:if test="${param.error != null}">        
		        <p>
		            Invalid username and password.
		        </p>
		    </c:if>
			<p>
				<label for="username">User:</label>
				<input type='text' name='username' value='' autofocus="autofocus"/>
			</p>
			<p>
				<label for="password">Password:</label>
				<input type='password' name='password' />
			</p>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			<div class="centerText">
				<input name="submit" type="submit" value="Login" />
			</div>
		</fieldset>
	</form>
	
<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>