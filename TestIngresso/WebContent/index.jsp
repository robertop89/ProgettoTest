<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Welcome</title>
		<link rel="stylesheet" href="stile.css" type="text/css"/>
	</head>
	<body>
	<div id="telaio">
		<div id="testata">
		Allenamento Test Ingresso
		</div>
		<div id="centrale">
			<div id="message">
				<s:actionerror/>
				<s:actionmessage/>
			</div>
			<div id="form">
			<s:form action="LoginAction" method="post">
				<s:textfield name="username" label="Username"/>
				<s:password name="password" label="Password"/>
				<s:submit value="Login"/>
			</s:form>
			</div>
		</div>
	</div>
</body>
</html>