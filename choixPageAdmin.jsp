<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Choix Page Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            background-color: #f4f4f8; /* Gris clair */
            color: #333; /* Gris foncé */
        }

        .navbar {
            background-color: #002147; /* Bleu UPF */
        }

        .navbar-brand {
            color: #fff !important;
        }

        .container {
            padding-top: 50px;
            text-align: center;
        }

        h1 {
            color: #002147; /* Bleu UPF */
            margin-bottom: 30px;
        }

        p {
            margin-bottom: 20px;
        }

        /* Ajout du style pour les boutons */
        .btn-primary {
            background-color: #e2001a; /* Rouge UPF */
            border-color: #e2001a;
            padding: 10px 20px;
            font-size: 16px;
            margin: 10px;
        }

        .btn-primary:hover {
            background-color: #ba0016;
            border-color: #ba0016;
        }
        /* Fin du style pour les boutons */
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #002147;">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
    </nav>

    <div class="container">
        <h1>Choix Page Admin</h1>

        <p>Choisissez où vous voulez aller :</p>
        
        <button class="btn btn-primary" onclick="window.location.href='registerEnseignant.jsp'">inscrire nouveau Enseignant</button>
        <button class="btn btn-primary" onclick="window.location.href='registerChef.jsp'">inscrire nouveau Chef de filière</button>
        
        <!-- Ajout du bouton pour accueil.jsp -->
        <button class="btn btn-primary" onclick="window.location.href='accueil.jsp'">Accueil</button>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
