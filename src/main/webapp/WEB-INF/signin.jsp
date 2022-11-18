<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link href="style.css" rel="stylesheet" >
		<title>Création de compte</title>
	</head>
	<body>
		<h1>Créer votre compte</h1>
		<div class='error'>
			<p>${error}</p>
		</div>
		<form method='post'>
		<label for='pseudo'>Taper votre pseudo:</label>
		<input type='text' id='pseudo' name='pseudo' placeholder='Ex: Jean'>
		<label for='email'>Taper votre email:</label>
		<input type='email' id='email' name='email' placeholder='Ex: jean@email.com'>
		<label for='tel'>Taper votre numéro de téléphone:</label>
		<input type="tel" id='tel' name='tel' placeholder='Ex: 0712548686'>
		<label for='password'>Taper votre mot de passe:</label>
		<input type='password' id='password' name='password'>
		<label for='password2'>Confirmer votre mot de passe:</label>
		<input type='password' id='password2' name='password2'>
		<input name='btn' type='submit' class='btn'>		
	</form>	
	</body>
</html>