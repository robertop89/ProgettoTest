<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Gestione Materie</title>
	<link rel="stylesheet" href="stile.css" type="text/css"/>
	<s:if test="#session.logined != 'true'">
  		<jsp:forward page="index.jsp"/>
  	</s:if>
</head>
<body>
	<div id="telaio">
		<div id="testata">
			Test Allenamento
		</div>
			<s:select name="idCategoria" list="categorie" 
					listKey="idCategoria" listValue="nome" label="Categoria"/>
				<s:submit value="Inserisci"/>
		</div>
	
</body>
</html>
