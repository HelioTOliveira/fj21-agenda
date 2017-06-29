<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*, br.com.caelum.jdbc.dao.*, br.com.caelum.jdbc.modelo.*, java.text.SimpleDateFormat" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<table border="1">
			<tr>
				<td>nome</td>
				<td>E-Mail</td>
				<td>Endereço</td>
				<td>Data Nascimento</td>
			</tr>
			<%
			ContatoDAO dao = new ContatoDAO();
			List<Contato> contatos = dao.getLista();
			SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
			for(Contato contato : contatos){			
			%>	
			<tr>			
					<td><%=contato.getNome() %></td>
					<td><%=contato.getEmail() %></td>
					<td><%=contato.getEndereco() %></td>
					<td><%=formato.format(contato.getDataNascimento().getTime())%></td>
				</tr>
			<%
			}
			%>				
		</table>
	</body>
</html>