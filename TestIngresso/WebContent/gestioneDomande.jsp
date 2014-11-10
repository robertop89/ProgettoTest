<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Gestione Domande</title>
	<link rel="stylesheet" href="stile.css" type="text/css"/>
	<s:if test="#session.logined != 'true'">
  		<jsp:forward page="index.jsp"/>
  	</s:if>
</head>
<body>
	<div id="telaio">
		<div id="testata">
			Gestione domande
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
			
		
			<s:url action="InserimentoAction" var="InserimentoAction">
				<s:param name="materia">materia</s:param>
			</s:url>
			<a href="<s:property value='#InserimentoAction'/>">Inserisci domanda</a>
			
			<table border=2 cellpadding=3>
				<tr>
					<td></td><td></td>
					<td>Id Domanda</td>
					<td>Testo</td>
					<td>Risposta 1</td>
					<td>Risposta 2</td>
					<td>Risposta 3</td>
					<td>Risposta 4</td>
					<td>Risposta 5</td>
					<td>Indice corretta</td>
					<td>Motivazione</td>
					<td>Materia</td>
				</tr>
				<s:iterator value="elenco">
				<tr>
					<td>
						<s:url action="ModificaAction" var="ModificaAction">
							<s:param name="idDomanda"><s:property value="idDomanda"/></s:param>
						</s:url>
						<a href="<s:property value='#ModificaAction'/>">Modifica</a>
					</td>
					<td>
						<s:url action="EliminaAction" var="EliminaAction">
							<s:param name="idDomanda"><s:property value="idDomanda"/></s:param>
						</s:url>
						<a href="<s:property value='#EliminaAction'/>" onclick="return confirm('Sicuro di voler eliminare la domanda con le sue statistiche?')">Elimina</a>
					</td>	
					<td><s:property value="idDomanda"/></td>
					<td><s:property value="testo"/></td>
					<td><s:property value="risposta1"/></td>
					<td><s:property value="risposta2"/></td>
					<td><s:property value="risposta3"/></td>
					<td><s:property value="risposta4"/></td>
					<td><s:property value="risposta5"/></td>
					<td><s:property value="indiceCorretta"/></td>
					<td><s:property value="motivazione"/></td>
					<td><s:property value="materia"/></td>
				</s:iterator>
		</table>
		</div>
	</div>
</body>
</html>