package br.com.caelum.mvc.logica;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.jdbc.dao.ContatoDAO;
import br.com.caelum.jdbc.modelo.Contato;

public class ListaContatosLogic implements Logica {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		List<Contato> contatos = new ArrayList<>();
		
		contatos = new ContatoDAO().getLista();
		
		req.setAttribute("contatos", contatos);
		
		return "lista-contatos.jsp";
	}

}
