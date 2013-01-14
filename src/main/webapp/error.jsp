<!DOCTYPE html>
<%@page import="org.hdiv.util.Constants"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>HDIV. Unauthorized access</title>
<style type="text/css">
<!--
body {
	margin: 0;
	padding: 0;
	text-align: center;
	background-color: #fff;
	font-family: verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
}

#errorCabecera {
	text-align: left;
	margin: 0 auto;
	position: relative;
	padding: 0;
	top: 0;
	left: 0;
	width: 500px;
	height: 400px;
	background: url(http://hdiv.org/img/bg.gif)
}

#errorCabecera img {
	margin: 70px 0 0 30px;
}

#errorMensaje {
	height: 100px;
	margin: 38px 0 0 0;
	background: #FFF;
	padding: 5px 0 0 16px;
}

#errorMensaje p {
	font-size: 22px;
	color: #333333;
}

#errorMensaje li {
	font-size: 12px;
	color: #333333;
}

#errorPie {
	height: 75px;
	margin: 75px 0 0 0;
	background: #FFF;
}
-->
</style>
</head>

<body>
	<div id="errorCabecera">
		<img src="http://hdiv.org/img/logo.gif" />
		<div id="errorMensaje">
			<p>Unauthorized access</p>
			<p>
			<ul>
<%
	Map errors = (Map)request.getSession().getAttribute(Constants.EDITABLE_PARAMETER_ERROR);
	if(errors != null){
		Iterator itr = errors.keySet().iterator(); 
		while(itr.hasNext()) {
		    Object key = itr.next(); 
	        %>
				<li>Values for field '<%= key %>' are not correct: <% 
	        		String[] values = (String[])errors.get(key);
	    			for (int i = 0; i < values.length; i++) {
	    				String val = values[i];
	    				out.print(val + " ");
	    			}
	        	
	        	%>
				</li>
				<%
	    }
		request.getSession().removeAttribute(Constants.EDITABLE_PARAMETER_ERROR);
	}
%>
			</ul>
			</p>
		</div>
		<div id="errorPie">
			<p>&copy; 2005-2012 hdiv.org</p>
		</div>
	</div>
</body>
</html>