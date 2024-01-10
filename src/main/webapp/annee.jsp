<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Bienvenue dans le Cahier Texte UPF</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('https://upf.ac.ma/images/places/11.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 400px;
            text-align: center;
        }

        h1 {
            color: #0077FF; /* Bleu */
        }

        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
            color: #0077FF; /* Bleu */
        }

        select, input, textarea {
            width: calc(100% - 22px);
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #0077FF; /* Bleu */
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 10px;
        }

        button:hover {
            background-color: #0055CC; /* Bleu plus sombre au survol */
        }
    </style>
</head>
<body>
    <form action="processModule.jsp" method="post">
        <h1>Bienvenue dans le Cahier Texte UPF</h1>

        <label for="annee">Choisissez l'année :</label>
        <select id="annee" name="annee" required>
            <option value="1A">Année 1</option>
            <option value="2A">Année 2</option>
            <option value="3A">Année 3</option>
            <option value="4A">Année 4</option>
            <option value="5A">Année 5</option>
        </select>

        <label for="module">Choisissez le module :</label>
        <select id="module" name="module" required>
            <option value="1">Module 1</option>
            <option value="2">Module 2</option>
            <option value="3">Module 3</option>
            <option value="4">Module 4</option>
            <option value="5">Module 5</option>
            <option value="6">Module 6</option>
            <option value="7">Module 7</option>
            <option value="8">Module 8</option>
        </select>

        <label for="nomProf">Nom du professeur :</label>
        <input type="text" id="nomProf" name="nomProf" required>

        <label for="dateSeance">Date de la séance :</label>
        <input type="date" id="dateSeance" name="dateSeance" required>

        <label for="infoSeance">Informations de la séance :</label>
        <textarea id="infoSeance" name="infoSeance" rows="8" required></textarea>

        <button type="submit">Enregistrer</button>
        
        <!-- Bouton de redirection vers loginprof.jsp -->
        <!-- Fin du bouton de redirection -->
        
        <!-- Bouton de redirection vers accueil.jsp -->
        <button onclick="window.location.href='accueil.jsp'" class="btn btn-primary">Accueil</button>
        <!-- Fin du bouton de redirection -->
        
    </form>
</body>
</html>
