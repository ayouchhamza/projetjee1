<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
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

        .btn-primary {
            background-color: #e2001a; /* Rouge UPF */
            border-color: #e2001a;
        }

        .btn-primary:hover {
            background-color: #ba0016;
            border-color: #ba0016;
        }

        .container {
            padding-top: 50px;
        }

        h1 {
            text-align: center;
            color: #002147; /* Bleu UPF */
            margin-bottom: 30px;
        }

        .btn {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            border-radius: 4px;
        }

        /* Ajout du style pour le formulaire */
        form {
            max-width: 300px;
            margin: 0 auto;
            background-color: #fff; /* Blanc */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        form button {
            background-color: #e2001a; /* Rouge UPF */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        form button:hover {
            background-color: #ba0016;
        }
        /* Fin du style pour le formulaire */
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #002147;">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
    </nav>

    <div class="container">
        <h1>Bienvenue</h1>



        <!-- Boutons pour les autres utilisateurs -->
         <button class="btn btn-primary" onclick="window.location.href='AdminLogin.jsp'">Je suis admin</button>
        <button class="btn btn-primary" onclick="window.location.href='loginprof.jsp'">Je suis enseignant</button>
        <button class="btn btn-primary" onclick="window.location.href='login.jsp'">Je suis secrétaire</button>
        <!-- Ajout du bouton pour chef de filière -->
        <button class="btn btn-primary" onclick="window.location.href='loginChef.jsp'">Je suis chef de filière</button>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
