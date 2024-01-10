<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Inscription Enseignant</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-image: url('https://upf.ac.ma/photos/news/2_202372685512_upf20232607.jpg'); /* Image de fond */
            background-size: cover;
            background-repeat: no-repeat;
            color: #333; /* Gris foncé */
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #ffffff; /* Blanc pour visibilité */
            margin-top: 50px;
        }

        form {
            max-width: 400px;
            margin: 50px auto;
            background-color: rgba(255, 255, 255, 0.9); /* Blanc avec transparence */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #0056b3; /* Bleu foncé */
        }

        input, button {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #0056b3; /* Bleu foncé */
            color: white;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #003970;
        }

        .navbar {
            background-color: #0056b3; /* Bleu foncé */
        }

        .navbar-brand, .nav-link {
            color: #fff !important;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
        <div class="navbar-nav ml-auto">
            <a class="nav-link" href="accueil.jsp">Accueil</a>
            <a class="nav-link" href="logout.jsp">Déconnexion</a>
        </div>
    </nav>

    <div class="container">
        <h1>Inscription Enseignant</h1>

        <form action="processRegisterEnseignant.jsp" method="post">
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required>

            <label for="prenom">Prénom :</label>
            <input type="text" id="prenom" name="prenom" required>

            <label for="email">Email :</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">inscrire</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
