<!DOCTYPE html>
<%@ include file="/WEB-INF/jsp/template/tags.jsp"%>
<html>
<head>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./css/example.css" />
</head>

<body onload='document.f.j_username.focus();'>
	<h1>Login with Username and Password</h1>
	
	Use the folowing username and password:
	<ul>
		<li>david:david</li>
		<li>alex:alex</li>
		<li>tim:tim</li>
	</ul>
	
	<form name='f'
		action='j_spring_security_check'
		method='post'>
		<fieldset>
			<c:if test="${param.error != null}">        
		        <p>
		            Invalid username and password.
		        </p>
		    </c:if>
			<p>
				<label for="j_username">User:</label>
				<input type='text' name='j_username' value='' autofocus="autofocus"/>
			</p>
			<p>
				<label for="j_password">Password:</label>
				<input type='password' name='j_password' />
			</p>
			<div class="centerText">
				<input name="submit" type="submit" value="Login" />
			</div>
		</fieldset>
	</form>
	
<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>