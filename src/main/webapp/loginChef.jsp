<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion Chef de filière</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 20px;
            background-image: url('https://upf.ac.ma/images/places/13.jpg'); /* Ajoutez le chemin de votre image de fond */
            background-size: cover;
            color: #002147; /* Bleu UPF pour la couleur du texte */
        }

        h1 {
            text-align: center;
            color: #002147; /* Bleu UPF pour la couleur du titre */
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.9); /* Couleur de fond avec transparence */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #002147; /* Bleu UPF pour la couleur du texte des étiquettes */
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
            background-color: #002147; /* Bleu UPF pour la couleur du bouton */
            color: white; /* Texte en blanc */
            cursor: pointer;
            border: none;
            border-radius: 4px;
            padding: 10px;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #001529; /* Bleu UPF légèrement plus foncé au survol */
        }

        /* Style pour le bouton "Accueil" */
        .btn-petit {
            background-color: #002147; /* Bleu UPF pour la couleur du bouton */
            color: white; /* Texte en blanc */
            cursor: pointer;
            border: none;
            border-radius: 4px;
            padding: 5px 10px; /* Ajustez la taille du bouton en modifiant les valeurs de padding */
            font-size: 12px; /* Ajustez la taille de la police en modifiant la valeur de font-size */
        }

        .btn-petit:hover {
            background-color: #001529; /* Bleu UPF légèrement plus foncé au survol */
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #002147;">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
        <!-- Bouton "Accueil" avec la classe "btn-petit" pour le rendre plus petit -->
        <button class="btn-petit" onclick="window.location.href='accueil.jsp'">Accueil</button>
    </nav>

    <div class="container">
        <h1>Connexion Chef de filière</h1>

        <!-- Formulaire de connexion -->
        <form action="loginProcessChef.jsp" method="post">
            <!-- Ajoutez les champs nécessaires pour la connexion -->
            <label for="email">Email :</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Se connecter">
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
