<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier un étudiant</title>
</head>
<body>
<h1>Modifier un étudiant</h1>
<form action="/edit-student/${student.id}" method="post">
    <label for="name">Nom:</label><br>
    <input type="text" id="name" name="name" value="${student.name}"><br>
    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email" value="${student.email}"><br>
    <label for="phoneNumber">Numéro de téléphone:</label><br>
    <input type="text" id="phoneNumber" name="phoneNumber" value="${student.phoneNumber}"><br>
    <label for="address">Adresse:</label><br>
    <input type="text" id="address" name="address" value="${student.address}"><br><br>
    <input type="submit" value="Modifier">
</form>
</body>
</html>
