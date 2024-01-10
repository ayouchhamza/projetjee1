<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Résultat Validation Code Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- Ajoutez vos styles personnalisés ici -->
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
    </nav>

    <div class="container">
        <h1>Résultat Validation Code Admin</h1>

        <% 
            // Récupérer le code admin saisi
            String adminCode = request.getParameter("adminCode");

            // Code admin par défaut
            String codeAdminParDefaut = "123456789";

            // Vérifier si le code admin est correct
            if (adminCode != null && adminCode.equals(codeAdminParDefaut)) {
                // Rediriger vers la page appropriée (par exemple, registerChef.jsp ou registerEnseignant.jsp)
                response.sendRedirect("choixPageAdmin.jsp");
            } else {
        %>
                <p>Code Admin incorrect. Veuillez réessayer.</p>
        <%
            }
        %>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
