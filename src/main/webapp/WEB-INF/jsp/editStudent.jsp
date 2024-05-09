<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mettre à Jour les Détails de l'Étudiant</title>
</head>
<body>
<h1>Mettre à Jour les Détails de l'Étudiant</h1>
<%--@elvariable id="student" type=""--%>
<form:form method="post" modelAttribute="student" action="/edit-student/${student.id}">
    <form:label path="name">Nom :</form:label>
    <form:input path="name"/>
    <form:label path="studentId">Numéro de Matricule :</form:label>
    <form:input path="studentId" disabled="true"/>
    <form:label path="email">E-mail :</form:label>
    <form:input path="email"/>
    <!-- Autres champs à mettre à jour -->
    <input type="submit" value="Mettre à Jour"/>
</form:form>
</body>
</html>
