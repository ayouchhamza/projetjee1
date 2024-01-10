<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Portail UPF</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            background-color: #f4f4f8;
            color: #333;
        }

        .navbar {
            background-color: #002147;
        }

        .navbar-brand {
            color: #fff !important;
        }

        .container {
            padding-top: 50px;
        }

        h1 {
            text-align: center;
            color: #002147;
            margin-bottom: 30px;
        }

        .card {
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .card-body {
            text-align: center;
        }

   .icon {
    height: 100px; /* Hauteur ajustée de l'icône */
    width:100px; /* Largeur ajustée de l'icône */
    margin: auto; /* Centre l'icône horizontalement */
    display: block; /* Affiche l'image en tant que bloc */
    margin-bottom: 15px; /* Espace en dessous de l'icône */
}
}
   
        .footer {
            background-color: #002147;
            color: white;
            text-align: center;
            padding: 10px 0;
        }
    </style>
    <script>
        function showMessage(role) {
            alert("Bienvenue dans l'espace " + role + " !");
        }
    </script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Portail UPF</a>
    </nav>

    <div class="container">
        <h1>Bienvenue sur le Portail UPF</h1>

        <div class="row">
            <!-- Carte pour l'Espace Admin -->
            <div class="col-md-6">
                <div class="card" onclick="showMessage('Admin')">
                     <img src="https://i.ibb.co/0y7LnyW/utilisateur.png" class="icon" alt="Icone Admin">
                    <div class="card-body">
                        <h5 class="card-title">Espace Admin</h5>
                        <p class="card-text">Gestion et administration du portail.</p>
                        <a href="AdminLogin.jsp" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>

            <!-- Carte pour l'Espace Enseignant -->
            <div class="col-md-6">
                <div class="card" onclick="showMessage('Enseignant')">
                    <img src="https://i.ibb.co/cD77tbz/enseignement.png" class="icon" alt="Icone Enseignant">
                    <div class="card-body">
                        <h5 class="card-title">Espace Enseignant</h5>
                        <p class="card-text">Ressources et outils pour les enseignants.</p>
                        <a href="loginprof.jsp" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>

            <!-- Carte pour l'Espace Secrétaire -->
            <div class="col-md-6">
                <div class="card" onclick="showMessage('Secrétaire')">
                     <img src="https://i.ibb.co/8Y5fBbv/secretaire.png" class="icon" alt="Icone Secrétaire">
                    <div class="card-body">
                        <h5 class="card-title">Espace Secrétaire</h5>
                        <p class="card-text">Outils administratifs pour les secrétaires.</p>
                        <a href="login.jsp" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>

            <!-- Carte pour l'Espace Chef de Filière -->
            <div class="col-md-6">
                <div class="card" onclick="showMessage('Chef de Filière')">
                     <img src="https://i.ibb.co/7JbXMFF/directeur-dorchestre-avec-baton.png" class="icon alt="Icone Chef de Filière">
                    <div class="card-body">
                        <h5 class="card-title">Espace Chef de Filière</h5>
                        <p class="card-text">Gestion des filières et des programmes.</p>
                        <a href="loginChef.jsp" class="btn btn-primary">Accéder</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        © 2024 Université de la Polynésie Française
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
