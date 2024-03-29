<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription Chef de filière</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f8; /* Gris clair */
        }

        h1 {
            text-align: center;
            color: #002147; /* Bleu UPF */
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff; /* Blanc */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #002147; /* Bleu UPF */
        }

        input {
            width: calc(100% - 22px);
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #e2001a; /* Rouge UPF */
            color: white;
            cursor: pointer;
            border: none;
            border-radius: 4px;
            padding: 10px;
        }

        input[type="submit"]:hover {
            background-color: #ba0016;
        }

        .btn-accueil {
            background-color: #002147; /* Bleu UPF */
            color: white;
            cursor: pointer;
            border: none;
            border-radius: 4px;
            padding: 10px;
            margin-top: 10px;
            width: 100%;
        }

        .btn-accueil:hover {
            background-color: #001529;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #002147;">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
    </nav>

    <div class="container">
        <h1>Inscription Chef de filière</h1>

        <!-- Formulaire d'inscription -->
        <!-- Assurez-vous de spécifier la bonne action pour le formulaire -->
        <form action="processRegisterChef.jsp" method="post">
            <!-- Ajoutez les champs nécessaires pour l'inscription -->
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required>

            <label for="prenom">Prénom :</label>
            <input type="text" id="prenom" name="prenom" required>

            <label for="email">Email :</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="S'inscrire">
        </form>

        <!-- Bouton de redirection vers acceuil.jsp -->
        <button class="btn-accueil" onclick="window.location.href='accueil.jsp'">Accueil</button>
        <!-- Fin du bouton de redirection -->
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
