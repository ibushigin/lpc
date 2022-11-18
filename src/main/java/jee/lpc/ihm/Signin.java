package jee.lpc.ihm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jee.lpc.dao.UserDAO;


@WebServlet("/signin")
public class Signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {			
		request.getRequestDispatcher("WEB-INF/signin.jsp").forward(request, response);		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String error = "";
		String pseudo = request.getParameter("pseudo");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String pwd = request.getParameter("password");
		String pwd2 = request.getParameter("password2");		
		HttpSession session = request.getSession(true);
		session.setAttribute("pseudo", pseudo);
		session.setAttribute("email", email);
		session.setAttribute("tel", tel);
		session.setAttribute("pwd", pwd);
		session.setAttribute("password", pwd2);	
		session.setAttribute("error", error);
		if(pseudo == null || pseudo.equals("")) { 				
			session.setAttribute("error", "Login vide");
			doGet(request, response);
		} else if(!email.contains("@")){
			session.setAttribute("error", "Email invalide");
			doGet(request, response);
		} else if(tel == null || tel.equals("")) {
			session.setAttribute("error", "Téléphone invalide");
			doGet(request, response);	
		} else if(!pwd.equals(pwd2)){		
			session.setAttribute("error", "Mot de passe différent");
			doGet(request, response);
		} else if(pwd.length() < 3){
			session.setAttribute("error", "Mot de passe doit faire plus de 3 caractères");
			doGet(request, response);
		} else {			
			try {					
				UserDAO.addUser(pseudo, email, tel, pwd);
				request.setAttribute("pseudo", pseudo);
				request.getRequestDispatcher("connected").forward(request, response);					
			} catch (Exception e) {
				request.setAttribute("msg", "Erreur dans la création du compte");
				System.out.println(e.getLocalizedMessage());
				e.printStackTrace();
				doGet(request, response);
			}			
		}				
	}
}

