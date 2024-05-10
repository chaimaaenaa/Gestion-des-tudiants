<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des étudiants</title>
    <link href="style.css">
</head>
<body>
<h1>Liste des étudiants</h1>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Email</th>
        <th>Numéro de téléphone</th>
        <th>Adresse</th>
        <th>Actions</th>
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
            <td>
                <a href="/edit-student/${student.id}">Modifier</a>
                <a href="/delete-student/${student.id}">Supprimer</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<button><a href="${pageContext.request.contextPath}/add-student">Add</a> </button>

</body>
</html>
