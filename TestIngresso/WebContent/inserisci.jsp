<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Inserimento Nuova Domanda</title>
	<link rel="stylesheet" href="stile.css" type="text/css"/>
	<s:if test="#session.logined != 'true'">
  		<jsp:forward page="index.jsp"/>
  	</s:if>
</head>
<body>
	<div id="telaio">
		<div id="testata">
			Sito di sondaggi
		</div>
		<div id="sinistro">
			<div id="link">
				<s:actionmessage/>
				<s:actionerror/>
				<s:url action="DomandeAction" var="DomandeAction">
					<s:param name="caso"><s:property value="1"/></s:param>
				</s:url>
				<a href="<s:property value='#DomandeAction'/>">Gestione Domande</a><br>
				
				<a href="<s:url action="CategorieAction"/>">Gestione Categorie Merceologiche</a><br>
		
				<s:url action="DomandeAction" var="DomandeAction">
					<s:param name="caso"><s:property value="2"/></s:param>
				</s:url>
				<a href="<s:property value='#DomandeAction'/>">Visualizza Statistiche</a><br>
				
				<s:url action="LogoutAction" var="LogoutAction"/>
				<a href="<s:property value='#LogoutAction'/>">Logout</a>
			</div>
		</div>
		<div id="centrale">
			<s:form action="Inserimento2Action" method="post">
				<s:hidden name="tipo"/>
				<s:hidden name="flag"/>
				<s:textarea name="testo" label="Testo della Domanda" cols="60" rows="3"/>
				<s:textfield name="risposta1" label="risposta 1" disabled="%{flag}" value="%{text}"/>
				<s:textfield name="risposta2" label="risposta 2" disabled="%{flag}" value="%{text}"/>
				<s:textfield name="risposta3" label="risposta 3" disabled="%{flag}" value="%{text}"/>
				<s:textfield name="risposta4" label="risposta 4" disabled="%{flag}" value="%{text}"/>
				<s:select name="idCategoria" list="categorie" 
					listKey="idCategoria" listValue="nome" label="Categoria"/>
				<s:submit value="Inserisci"/>
			</s:form>
		</div>
	</div>
</body>
</html>