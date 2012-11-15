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
		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='j_username' value=''/>
				</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='j_password' />
				</td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="Login" />
				</td>
			</tr>
		</table>
	</form>
	
<%@ include file="/WEB-INF/jsp/template/footer.jsp"%>
</body>
</html>