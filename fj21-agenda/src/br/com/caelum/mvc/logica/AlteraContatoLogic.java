package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class AlteraContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		
		Contato contato = new Contato();
		ContatoDAO dao = new ContatoDAO();
		
		contato = dao.buscaContato(id);
		req.setAttribute("contato", contato);
		
		return "alterar-contato.jsp";
	}

}
