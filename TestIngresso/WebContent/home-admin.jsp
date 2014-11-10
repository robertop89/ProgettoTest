<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Amministratore</title>
		<link rel="stylesheet" href="stile.css" type="text/css"/>
		<s:if test="#session.logined != 'true'">
  			<jsp:forward page="index.jsp"/>
  		</s:if>
	</head>
<body>
	<div id="telaio">
		<div id="testata">
			Gestione Materie
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
		<table border=2 cellpadding=3>
				<tr>
					<td></td><td></td>
					<td>Id Materia</td>
					<td>Nome</td>
				</tr>
				<s:iterator value="elenco">
				<tr>
					<td>
					   
					<s:url action="MaterieAction" var="MaterieAction">
						<s:param name="id"><s:property value="id"/></s:param>
					</s:url>
				     	<a href="<s:url action='#ModificaMateriaAction'/>">Modifica Nome Materia</a><br>
					</td>
					<td>
					<s:url action="DomandeAction" var="DomandeAction">
						<s:param name="id"><s:property value="id"/></s:param>
						</s:url>
						<a href="<s:property value='#DomandeAction'/>">Gestione domande</a>
					</td>
	
					<td><s:property value="id"/></td>
					<td><s:property value="nome"/></td>
				</s:iterator>
		</table>
		</div>
	</div>
</body>
</html>