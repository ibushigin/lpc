package jee.lpc.ihm;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jee.lpc.dao.AnnonceDAO;
import jee.lpc.model.AnnonceDetail;


/**
 * Servlet implementation class Show
 */
@WebServlet("/show")
public class Show extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt( request.getParameter("id") );			
			AnnonceDetail a = AnnonceDAO.getAnnonceById(id);
			request.setAttribute("a", a);	
			request.getRequestDispatcher("/WEB-INF/show.jsp").forward(request, response);
			

		} catch (Exception e) {
			e.printStackTrace();
			request.getRequestDispatcher("").forward(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
