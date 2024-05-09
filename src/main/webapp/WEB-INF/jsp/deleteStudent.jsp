<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Supprimer un Étudiant</title>
</head>
<body>
<h1>Supprimer l'Étudiant</h1>
<p>Voulez-vous vraiment supprimer l'étudiant "${student.name}" ?</p>
<form method="post" action="/delete-student/${student.id}">
    <input type="submit" value="Confirmer"/>
</form>
</body>
</html>
