<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supprimer un étudiant</title>
</head>
<body>
<h1>Supprimer un étudiant</h1>
<p>Voulez-vous vraiment supprimer cet étudiant?</p>
<form action="/delete-student/${student.id}" method="post">
    <input type="submit" value="Supprimer">
</form>
<a href="/students">Annuler</a>
</body>
</html>
