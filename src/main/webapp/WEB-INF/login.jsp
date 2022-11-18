<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" >
<title>Page de login</title>
</head>
<body>
	<h1>Se connecter</h1>
	<p>${msg}</p>
	
	<form method='post'>
		<label for='email'>Taper votre email:</label>
		<input type='text' id='email' name='email' placeholder='Ex: jean@email.fr'>
		<label for='password'>Taper votre mot de passe:</label>
		<input type='password' id='password' name='password'>
		<input name='btn' type='submit' class='btn'>		
	</form>	
	
</body>
</html>