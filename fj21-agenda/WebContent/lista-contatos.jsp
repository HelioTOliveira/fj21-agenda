<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Lista contatos</title>
	</head>
	<body>
		<c:import url="cabecalho.jsp"/>		 
		
		<table border="1">
			 <tr>
				<td>Nome</td>
				<td>Email</td>
				<td>Endere�o</td>
				<td>Data Nascimento</td>
				<td>A��o</td>
			 </tr>
			 <c:forEach items="${contatos}" var="contato" varStatus="id">
				 <tr bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
	         		<td>${contato.nome}</td>
	         		<td>
	         			<c:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
						<c:if test="${empty contato.email}">
							E-mail n�o informado
						</c:if>
	         		</td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}"
							pattern="dd/MM/yyyy" /><td>
					<td>
						<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a>
					</td>					
	         	</tr>
	     	 </c:forEach>     
	    </table>
	    <c:import url="rodape.jsp"/>	 
	</body>
</html>