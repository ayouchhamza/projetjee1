<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            background-image: url('https://upf.ac.ma/images/places/8.jpg'); /* Ajoutez le chemin de votre image de fond */
            background-size: cover;
            color: #333; /* Gris foncé */
        }

        h1 {
            text-align: center;
            color: #002147; /* Bleu UPF */
            margin-bottom: 30px;
        }

        form {
            width: 300px;
            margin: 0 auto;
            background-color: rgba(255, 255, 255, 0.9); /* Couleur de fond avec transparence */
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #002147; /* Bleu UPF */
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #000; /* Noir */
            border: none;
            color: #fff;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            background-image: url('button-background.jpg'); /* Ajoutez le chemin de votre image de fond pour les boutons */
            background-size: cover;
        }

        input[type="submit"]:hover {
            background-color: #333; /* Noir légèrement plus clair au survol */
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">accueil</a>
    </nav>

    <div class="container">
        <h1>Connexion</h1>
        <form action="login" method="post">
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
