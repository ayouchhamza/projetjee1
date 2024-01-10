<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Validation Code Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            background-image: url('https://upf.ac.ma/photos/news/2_202372685512_upf20232607.jpg'); /* Image de fond */
            background-size: cover; /* Ajuste l'image pour couvrir tout l'écran */
            background-repeat: no-repeat;
            background-attachment: fixed;
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
            background-color: rgba(255, 255, 255, 0.8); /* Fond semi-transparent */
            border-radius: 15px;
            margin-bottom: 30px; /* Espace en dessous du conteneur */
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #002147; /* Bleu UPF */
            margin-bottom: 30px;
        }

        form {
            max-width: 300px;
            margin: 0 auto;
            background-color: transparent; /* Fond transparent */
            padding: 20px;
            border-radius: 8px;
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

        .btn-primary {
            display: block;
            width: 100%;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
                <div class="navbar-nav ml-auto">
        
        <a class="btn btn-primary" href="accueil.jsp">Accueil</a>
    </nav>

    <div class="container">
        <h1>Connexion Enseignant</h1>

        <form action="loginProcessProf.jsp" method="post">
            <label for="email">Email :</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Mot de passe :</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Se connecter">

            <!-- Bouton de redirection vers acceuil.jsp -->
\            <!-- Fin du bouton de redirection -->
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
