<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Tableau de Bord Enseignant - Cahier Texte UPF</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Inclure Chart.js -->

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('background.jpg'); /* Remplacez 'background.jpg' par le chemin de votre image de fond */
            background-size: cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .dashboard {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .sidebar {
            height: 100%;
            width: 250px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #333;
            color: #fff;
            padding: 20px;
        }

        .menu-item {
            background-color: #444;
            margin-bottom: 10px;
            border-radius: 5px;
            padding: 10px;
            transition: background-color 0.3s;
        }

        .menu-item:hover {
            background-color: #555;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
        }

        .dashboard-container {
            background-color: rgba(255, 255, 255, 0.9); /* Couleur de fond avec transparence */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            max-width: 500px;
            width: 100%;
            margin: 0 auto;
        }

        .dashboard-title {
            color: #006400;
            margin-bottom: 20px;
            text-align: center;
        }

        .container {
            margin-bottom: 15px;
        }

        label {
            font-weight: bold;
            color: #006400;
        }

        select, input, textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        .logout-button {
            background-color: #d9534f;
            margin-top: 20px;
        }

        .logout-button:hover {
            background-color: #c9302c;
        }

        /* Animation pour les statistiques */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .stats-container {
            animation: fadeIn 2s;
        }
    </style>
</head>
<body>
    <div class="dashboard">
        <div class="sidebar">
            <div class="menu-item">
                <a href="accueil.jsp" class="text-white">Accueil</a>
            </div>
            <div class="menu-item">
                <a href="registerEnseignant.jsp" class="text-white">enregistrer un enseignant </a>
            </div>
            <div class="menu-item">
                <a href="accueil.jsp" class="text-white">Déconnexion</a>
            </div>
        </div>
        <div class="content">
            <div class="dashboard-container">
                <h1 class="dashboard-title">secrétaire </h1>

                <!-- Informations fictives -->
                <div class="dashboard-card">
                    <h2>Informations</h2>
                    <p>Nom de la secrétaire: Marie</p>
                  
                    
                </div>

                <!-- Statistiques fictives avec animation -->
                <div class="dashboard-card stats-container">
                    <h2>Statistiques</h2>
                    <canvas id="statsChart" width="400" height="200"></canvas> <!-- Emplacement du graphique -->
                </div>
                <!-- Fin des statistiques fictives -->
                
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    
    <script>
        // Données fictives pour le graphique en camembert
        var ctx = document.getElementById('statsChart').getContext('2d');
        var statsChart = new Chart(ctx, {
            type: 'doughnut', // Type de graphique en camembert
            data: {
                labels: ['Enseignants Inscrits', 'Enseignants Non Inscrits'],
                datasets: [{
                    data: [42, 58], // Remplacez par vos données réelles (42 enseignants inscrits, 58 enseignants non inscrits)
                    backgroundColor: ['rgba(75, 192, 192, 0.6)', 'rgba(255, 99, 132, 0.6)'], // Couleurs des secteurs du camembert
                    borderColor: ['rgba(75, 192, 192, 1)', 'rgba(255, 99, 132, 1)'], // Couleurs des bordures
                    borderWidth: 1
                }]
            }
        });
    </script>
</body>
</html>
