<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des étudiants</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        h1 {
            margin: 0;
        }

        main {
            padding: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        button {
            margin-top: 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Navbar */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: #333;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <h1>Liste des étudiants</h1>
</header>

<nav class="navbar">
    <a href="#">Accueil</a>
    <a href="#">Ajouter un étudiant</a>
    <a href="#">À propos</a>
</nav>

<main>
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
                    <a href="${pageContext.request.contextPath}/edit-student/${student.id}">Modifier</a>
                    <a href="${pageContext.request.contextPath}/delete-student/${student.id}">Supprimer</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <button><a href="${pageContext.request.contextPath}/add-student">Ajouter un étudiant</a></button>
</main>

<footer>
    <p>&copy; 2024 Gestion des étudiants ENAA</p>
</footer>

</body>
</html>
