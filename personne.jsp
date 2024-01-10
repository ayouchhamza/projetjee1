<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulaire d'inscription des employés - UPF</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 0;
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
            margin-bottom: 5px;
            color: #002147; /* Bleu UPF */
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
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
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #002147;">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
    </nav>

    <div class="container">
        <h1>Formulaire d'inscription des employés - UPF</h1>

        <form action="process.jsp" method="post">
            <!-- Nom -->
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required>

            <!-- Prénom -->
            <label for="prenom">Prénom :</label>
            <input type="text" id="prenom" name="prenom" required>

            <!-- Âge -->
            <label for="age">Âge :</label>
            <input type="number" id="age" name="age" required>

            <!-- Année de début -->
            <label for="anneeDebut">Année de début de travail :</label>
            <input type="number" id="anneeDebut" name="anneeDebut" required>

            <!-- Date de naissance -->
            <label for="dateNaissance">Date de naissance :</label>
            <input type="date" id="dateNaissance" name="dateNaissance" required>

            <!-- Email -->
            <label for="email">Email :</label>
            <input type="email" id="email" name="email" required>

            <!-- Poste -->
            <label for="poste">Poste :</label>
            <select id="poste" name="poste" required>
                <option value="enseignant">Enseignant</option>
                <option value="chef de filiere">Chef de filière</option>
                <option value="stagiaire">Stagiaire</option>
                <option value="secretaire">Secrétaire</option>
            </select>

            <input type="submit" value="S'inscrire">
            
                        <!-- Bouton de redirection vers acceuil.jsp -->
            <button onclick="window.location.href='accueil.jsp'" class="btn btn-primary">Accueil</button>
            <!-- Fin du bouton de redirection -->
            
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
