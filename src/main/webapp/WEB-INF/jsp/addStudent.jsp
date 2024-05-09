<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un Nouvel Étudiant</title>
</head>
<body>
<h1>Ajouter un Nouvel Étudiant</h1>
<%--@elvariable id="student" type=""--%>
<form:form method="post" modelAttribute="student">
    <form:label path="name">Nom :</form:label>
    <form:input path="name"/>
    <form:label path="studentId">Numéro de Matricule :</form:label>
    <form:input path="studentId"/>
    <form:label path="email">E-mail :</form:label>
    <form:input path="email"/>
    <!-- Autres champs à ajouter -->
    <input type="submit" value="Ajouter Étudiant"/>
</form:form>
</body>
</html>
