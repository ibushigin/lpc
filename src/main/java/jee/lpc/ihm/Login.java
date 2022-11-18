package jee.lpc.ihm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jee.lpc.dao.UtilConnexion;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String email = request.getParameter("email");
			String pwd = request.getParameter("password");
			String msg = "";			
			Connection con = UtilConnexion.seConnecter();			
			String query = "SELECT * FROM users_lpc WHERE email = '" + email + "' AND pwd = '" + pwd + "';";			
			ResultSet rs = con.createStatement().executeQuery(query);
			System.out.println(rs.toString());			
			if (rs.next()) {
                String pseudo = rs.getString("pseudo");                
                request.setAttribute("pseudo", pseudo);
                request.getRequestDispatcher("connected").forward(request, response);
              }else {
            	  	msg = "il y a un petit probleme";                	
      				request.setAttribute("msg", msg);
      				request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
              }
		rs.close();
		con.close();	
		} catch (Exception e) {
			request.setAttribute("msg", "Erreur dans le login");
			System.out.println(e.getLocalizedMessage());
			e.printStackTrace();
			doGet(request, response);
		}
		
	}

}
