<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<html>
	<head>
		<%--<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
		<script src="http://code.jquery.com/jquery-1.8.2.js"></script>
		<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>--%>
		<%-- <link href="js/jquery-ui.css" rel="stylesheet">
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui.js"></script> --%>
	</head>
	<body>
		<c:import url="cabecalho.jsp" />
	
		<h1> Adicionar Contato</h1>
		<hr/>
		<form action="adicionaContato">
			Nome : <input type="text" name="nome"/><br/>
			E-mail : <input type="text" name="email"/><br/>
			Endereço : <input type="text" name="endereco"/><br/>
			Data de Nascimento : <caelum:campoData id="dataNascimento" /><br/> 
			<input type="submit" value="Gravar"/>
		</form>
		<c:import url="rodape.jsp"/>
	</body>
</html>