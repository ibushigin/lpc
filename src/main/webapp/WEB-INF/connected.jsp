<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" >
<title>Mes annonces - ${pseudo}</title>
</head>
<body>
	<h1>${pseudo} est bien connecté</h1>
	<a href="index.jsp">Retour à la liste des annonces</a>
	<h2>Ta liste d'annonces</h2>
	<%-- <p>${msg}</p>	
	<table>
		<tr><th>id</th><th>Titre</th><th>Catégorie</th> <th>Description</th><th>Prix</th></tr>
		<% for (User u: UserDAO.getAllUsers()) { %>
			<tr>
				<td> <%= u.getId() %> </td>
				<td> <%= u.getLogin() %> </td>
				<td> <%= u.getEmail() %> </td>
				<td> <%= u.getPwd() %> </td>
				<td> <a href="delete?id=<%= u.getId()%> ">Supprimer</a> </td>
				<td> <a href="update?id=<%= u.getId()%> ">Editer</a> </td>			
			</tr>
			<%
			}
			%>
	</table> --%>
</body>
</html>