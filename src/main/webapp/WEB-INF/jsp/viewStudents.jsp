<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Étudiants</title>
    <link href="/static/css/style.css">
</head>
<body>
<h1>Liste des Étudiants</h1>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>E-mail</th>
        <th>Numéro de Téléphone</th>
        <th>Adresse</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${students}" var="student">
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.email}</td>
            <td>${student.phoneNumber}</td>
            <td>${student.address}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
