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
	<a href="signin">Créer un compte</a>
	<a href="login">Se connecter</a>	
	<h2>Liste de toutes nos annonces</h2>
	<p>${msg}</p>	
	<div class="list">		
		<% for (Annonce a: AnnonceDAO.getAllAnnoncesOrderedByID()) { %>
			<div class="list__item">				
				<h3> <%= a.getTitle() %> </h3>
				<img class="index__img" alt="pochette <%= a.getTitle() %>" src="<%= a.getImg() %>">
				<p> <%= a.getDescr() %> </p>
				<p> <%= a.getPrix() %>€ </p>				
				<a href="show?id=<%= a.getId()%> ">Voir détails</a>				
			</div>
			<%
			}
			%>
	</div>
	
</body>
</html>