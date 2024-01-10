<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Modules</title>
</head>
<body>
    <h1>Modules</h1>

    <%
        // Récupérer le paramètre "annee" depuis la requête
        String selectedAnnee = request.getParameter("annee");

        if (selectedAnnee != null) {
    %>
            <p>Modules pour l'année <%= selectedAnnee %></p>
            <ul>
                <li><a href="module1.jsp">Module 1</a></li>
                <li><a href="module2.jsp">Module 2</a></li>
                <li><a href="module3.jsp">Module 3</a></li>
                <li><a href="module4.jsp">Module 4</a></li>
                <li><a href="module5.jsp">Module 5</a></li>
                <li><a href="module6.jsp">Module 6</a></li>
                <li><a href="module7.jsp">Module 7</a></li>
                <li><a href="module8.jsp">Module 8</a></li>
            </ul>
    <%
        }
    %>
</body>
</html>
