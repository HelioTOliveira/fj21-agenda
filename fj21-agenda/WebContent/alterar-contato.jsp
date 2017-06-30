<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
		<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
<%-- <link href="js/jquery-ui.css" rel="stylesheet">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script> --%>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Alterar Contato</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp" />
	
		<h1> Alterar Contato</h1>
		<hr/>
		<form action="adicionaContato">
			Nome : <input type="text" name="nome" value="${contato.nome}"/><br/>
			E-mail : <input type="text" name="email" value="${contato.email}" /><br/>
			Endereço : <input type="text" name="endereco" value="${contato.endereco}"/><br/>
			Data de Nascimento : <input type="text" name="dataNascimento" value="${contato.dataNascimento.time}" /><br/> 
			<input type="submit" value="Salvar"/>
		</form>
		<c:import url="rodape.jsp"/>
	</body>
</html>