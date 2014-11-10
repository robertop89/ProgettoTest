<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Modifica</title>
	<link rel="stylesheet" href="stile.css" type="text/css"/>
	<s:if test="#session.logined != 'true'">
  		<jsp:forward page="index.jsp"/>
  	</s:if>
</head>
<body>
	<div id="telaio">
		<div id="testata">
			Modifica nome materia
		</div>
		<div id="sinistro">
			<div id="link">
				<s:actionmessage/>
				<s:actionerror/>				
				<s:url action="LogoutAction" var="LogoutAction"/>
				<a href="<s:property value='#LogoutAction'/>">Logout</a>
			</div>
		</div>
		<div id="centrale">
			<s:form action="ModificaMateriaAction" method="post">
				<s:textarea name="materia.nome" label="Nome della materia" cols="60" rows="3"/>
				<s:submit value="Modifica"/>
			</s:form>
		</div>
	</div>
</body>
</html>