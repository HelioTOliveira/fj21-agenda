package br.com.caelum.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.mvc.logica.Logica;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	
	   	String parametro = request.getParameter("logica");
	   	String nomeDaClasse = "br.com.caelum.mvc.logica." + parametro;
	   	
		try {
			Class<?> classe  = Class.forName(nomeDaClasse);
			Logica logica = (Logica) classe.newInstance();
			String pagina = logica.executa(request, response);
			System.out.println("ServletController");
			request.getRequestDispatcher(pagina).forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
			throw new ServletException(
					"A l�gica de neg�cios causou uma exce��o", e);
		}
    }
    
}
