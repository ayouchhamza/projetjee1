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
        }

        h1 {
            text-align: center;
            color: #002147; /* Bleu UPF */
            margin-bottom: 30px;
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
        /* Fin du style pour le formulaire */
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #002147;">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
    </nav>

    <div class="container">
        <h1>Validation Code Admin</h1>

        <!-- Formulaire de validation du code admin -->
        <form action="AdminValidation.jsp" method="post">
            <label for="adminCode">Code Admin :</label>
            <input type="password" id="adminCode" name="adminCode" required>
            <input type="submit" value="Valider">
        </form>
        <!-- Fin du formulaire -->

   <!-- Ajout du bouton pour accueil.jsp -->
        <button class="btn btn-primary" onclick="window.location.href='accueil.jsp'">Accueil</button>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
