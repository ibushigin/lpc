<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" >
<title>Détail de ${a.getTitre()}</title>
</head>
<body>
<div class="detail">
<h1>Détails de l'article ${a.titre}</h1>
<img class="detail__img" alt="Pochette de ${a.titre }" src="${a.aImg}">
<p class="detail__descr">${a.descr}</p>
<p>${a.prix}€</p>
<p>${a.catName}</p>
<h1>Détails du vendeur</h1>
<p>${a.pseudo}</p>
<p>${a.email}</p>
<p>${a.tel}</p>
</div>
</body>
</html>