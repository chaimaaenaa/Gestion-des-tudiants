<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un étudiant</title>
</head>
<body>
<h1>Ajouter un étudiant</h1>
<form action="/add-student" method="post">
    <label for="id">Id:</label><br>
    <input type="text" id="id" name="id"><br>
    <label for="name">Nom:</label><br>
    <input type="text" id="name" name="name"><br>
    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email"><br>
    <label for="phoneNumber">Numéro de téléphone:</label><br>
    <input type="text" id="phoneNumber" name="phoneNumber"><br>
    <label for="address">Adresse:</label><br>
    <input type="text" id="address" name="address"><br><br>
    <input type="submit" value="Ajouter">
</form>
</body>
</html>
