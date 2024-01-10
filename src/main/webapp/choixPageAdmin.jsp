<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Tableau de Bord Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-color: #f4f4f8;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #0056b3;
            color: #fff;
        }

        .navbar-brand, .nav-link {
            color: #fff !important;
        }

        .sidebar {
            height: 100vh;
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

        .card {
            background-color: #fff;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .dashboard-title {
            color: #0056b3;
            margin-bottom: 30px;
        }

        /* Styles pour les messages */
        .message {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px 0;
            background-color: #f9f9f9;
        }

        .message strong {
            color: #0056b3;
        }

        /* Style pour l'agenda */
        #agenda {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        /* Style pour afficher/masquer les statistiques */
        #toggleStatistics {
            cursor: pointer;
            color: #0056b3;
            text-decoration: underline;
        }

        #statisticsContainer {
            display: none;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Tableau de Bord Admin</a>
        <div class="navbar-nav ml-auto">
            
            <a class="nav-link" href="accueil.jsp">Déconnexion</a>
        </div>
    </nav>

    <div class="sidebar">
        <div class="menu-item">
            <a href="accueil.jsp" class="text-white">Accueil</a>
        </div>
        <div class="menu-item">
            <a href="registerEnseignant.jsp" class="text-white">Inscrire Enseignant</a>
        </div>
        <div class="menu-item">
            <a href="registerChef.jsp" class="text-white">Inscrire Chef de filière</a>
        </div>
    </div>

    <div class="content">
        <h1 class="dashboard-title">Bienvenue sur le Tableau de Bord</h1>
        <!-- Statistiques -->
        <div class="card" id="statisticsContainer">
            <h3>Statistiques des Inscriptions</h3>
            <canvas id="statistiquesChart" width="400" height="200"></canvas>
        </div>
        <div id="toggleStatistics" onclick="toggleStatistics()">Cliquez ici pour afficher/masquer les statistiques</div>
       
        <div class="card">
            <h3>Informations Importantes</h3>
            <p><strong>Réunion des enseignants :</strong> La réunion des enseignants aura lieu le 12 Mars à 14h dans la salle 301.</p>
            <p><strong>Date limite d'inscription :</strong> La date limite pour les inscriptions est le 15 Mars. Assurez-vous de compléter toutes les inscriptions à temps.</p>
        </div>
     

        <!-- Agenda (utilisation de FullCalendar) -->
        <div class="card">
            <h3>Agenda</h3>
            <div id="agenda"></div>
            
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
    <script>
        // Données pour le graphique (exemple)
        var statistiquesData = {
            labels: ["Enseignants", "Chefs de filière"],
            datasets: [{
                label: 'Nombre d\'inscriptions',
                data: [150, 40],
                backgroundColor: ['rgba(75, 192, 192, 0.2)', 'rgba(255, 99, 132, 0.2)'],
                borderColor: ['rgba(75, 192, 192, 1)', 'rgba(255, 99, 132, 1)'],
                borderWidth: 1
            }]
        };

        // Options du graphique
        var statistiquesOptions = {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        };

        // Création du graphique
        var ctx = document.getElementById('statistiquesChart').getContext('2d');
        var statistiquesChart = new Chart(ctx, {
            type: 'bar',
            data: statistiquesData,
            options: statistiquesOptions
        });

        // Données pour l'agenda (exemple)
        var events = [
            {
                title: 'Réunion des enseignants',
                start: '2024-03-12'
            },
            {
                title: 'Date limite pour les inscriptions',
                start: '2024-03-15'
            }
        ];

        // Configuration de l'agenda
        $('#agenda').fullCalendar({
            events: events
        });

        // Fonction pour afficher/masquer les statistiques
        function toggleStatistics() {
            var statisticsContainer = document.getElementById('statisticsContainer');
            var toggleStatistics = document.getElementById('toggleStatistics');
            if (statisticsContainer.style.display === 'none') {
                statisticsContainer.style.display = 'block';
                toggleStatistics.textContent = 'Cliquez ici pour masquer les statistiques';
            } else {
                statisticsContainer.style.display = 'none';
                toggleStatistics.textContent = 'Cliquez ici pour afficher les statistiques';
            }
        }
    </script>
</body>
</html>
