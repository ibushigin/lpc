<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jee.lpc.model.Annonce" %>    
<%@ page import="jee.lpc.dao.AnnonceDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" >
<title>Music Market</title>
</head>
<body>
	<h1>Bienvenue sur Music Market</h1>
	<a class="btn" href="signin">Créer un compte</a>
	<a class="btn"href="login">Se connecter</a>	
	<h2>Liste de toutes nos annonces</h2>
	<p>${msg}</p>	
	<div class="list">		
		<% for (Annonce a: AnnonceDAO.getAllAnnoncesOrderedByID()) { %>			
				<a class="list__a" href="show?id=<%= a.getId()%> ">
					<img class="index__img" alt="pochette <%= a.getTitle() %>" src="<%= a.getImg() %>">				
					<h4> <%= a.getTitle() %> </h4>				
					<p> <%= a.getDescr() %> </p>
					<p> <%= a.getPrix() %>€ </p>				
					<%-- <a href="show?id=<%= a.getId()%> ">Voir détails</a>	 --%>
				</a>
			<%
			}
			%>
	</div>
	
</body>
</html>