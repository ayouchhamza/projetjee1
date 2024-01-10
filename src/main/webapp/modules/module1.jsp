<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Module 1</title>
</head>
<body>
    <h1>Année : <%= request.getParameter("annee") %></h1>
    <h2>Module : 1</h2>

    <form action="processModule.jsp" method="post">
        <%-- Lundi --%>
        <label for="lundi1">Lundi - Séance 1 :</label>
        <input type="text" id="lundi1" name="lundi1" required>

        <label for="lundi2">Lundi - Séance 2 :</label>
        <input type="text" id="lundi2" name="lundi2" required>

        <%-- Répétez ces étiquettes et champs pour chaque jour et séance --%>

        <button type="submit">Enregistrer</button>
    </form>
</body>
</html>
