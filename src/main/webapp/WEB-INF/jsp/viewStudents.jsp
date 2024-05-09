<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Étudiants</title>
</head>
<body>
<h1>Liste des Étudiants</h1>
<table>
    <thead>
    <tr>
        <th>Nom</th>
        <th>Numéro de Matricule</th>
        <th>E-mail</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${students}" var="student">
        <tr>
            <td>${student.name}</td>
            <td>${student.studentId}</td>
            <td>${student.email}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
