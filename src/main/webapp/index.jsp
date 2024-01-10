<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Affichage Cahier de Texte</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f8; /* Gris clair */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        input[type="text"], input[type="date"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }

        /* Style pour le bouton Accueil */
        button#accueilBtn {
            background-color: #002147; /* Bleu UPF */
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button#accueilBtn:hover {
            background-color: #001529;
        }

        /* Style pour le bouton Envoyer Mail */
        button.emailBtn {
            background-color: #4CAF50; /* Vert */
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button.emailBtn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #002147;">
        <a class="navbar-brand" href="#">UPF Cahier Texte</a>
    </nav>

    <div class="container">
        <h1>Affichage Cahier de Texte</h1>

        <%
            // Destinataire par défaut
            String destinataireParDefaut = "benmaajouzghali@gmail.com";
        %>

        <form action="index.jsp" method="post">
            <label for="filterText">Filtrer par Texte complet :</label>
            <input type="text" id="filterText" name="filterText">
            
            <label for="filterDate">Filtrer par Date :</label>
            <input type="date" id="filterDate" name="filterDate">
            
            <input type="submit" value="Filtrer">

            <!-- Bouton de redirection vers accueil.jsp -->
            <button id="accueilBtn" onclick="window.location.href='accueil.jsp'" type="button">Accueil</button>
            <!-- Fin du bouton de redirection -->
        </form>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Année</th>
                    <th>Module</th>
                    <th>Nom Prof</th>
                    <th>Date Séance</th>
                    <th>Info Séance</th>
                    <th>Action</th> <!-- Nouvelle colonne pour l'action -->
                </tr>
            </thead>
            <tbody>
                <% 
                    String filterText = request.getParameter("filterText");
                    String filterDate = request.getParameter("filterDate");
                    Connection conn = null;
                    PreparedStatement pstmt = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/omran_db", "root", "");

                        String query = "SELECT * FROM cahier_texte";
                        if (filterText != null && !filterText.isEmpty()) {
                            query += " WHERE nomProf LIKE '%" + filterText + "%' OR infoSeance LIKE '%" + filterText + "%'";
                        }
                        if (filterDate != null && !filterDate.isEmpty()) {
                            query += (filterText != null && !filterText.isEmpty()) ? " AND dateSeance = '" + filterDate + "'" : " WHERE dateSeance = '" + filterDate + "'";
                        }

                        pstmt = conn.prepareStatement(query);
                        rs = pstmt.executeQuery();

                        while (rs.next()) {
                %>
                            <tr>
                                <td><%= rs.getInt("id") %></td>
                                <td><%= rs.getString("annee") %></td>
                                <td><%= rs.getString("module") %></td>
                                <td><%= rs.getString("nomProf") %></td>
                                <td><%= rs.getString("dateSeance") %></td>
                                <td><%= rs.getString("infoSeance") %></td>
                                <!-- Ajout du bouton pour envoyer un e-mail -->
                                <td><button class="emailBtn" onclick="sendEmail('<%= rs.getString("nomProf") %>', '<%= rs.getString("module") %>', '<%= destinataireParDefaut %>')">Envoyer Mail</button></td>
                            </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        try {
                            if (rs != null) rs.close();
                            if (pstmt != null) pstmt.close();
                            if (conn != null) conn.close();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- JavaScript pour envoyer un e-mail -->
    <script>
        function sendEmail(destinataire, module, destinataireParDefaut) {
            var subject = "Cahier de Texte - Module: " + module;
            var body = "Bonjour " + destinataire + ",\n\n";
            body += "Vous êtes responsable du module " + module + ".\n";
            body += "Merci de consulter le cahier de texte pour plus d'informations.\n\n";
            body += "Cordialement,\nUPF Cahier Texte";

            // Concaténer les destinataires avec une virgule
            var destinataires = destinataireParDefaut + "," + destinataire;

            // Construction de l'URL avec les paramètres de l'e-mail
            var mailtoUrl = "mailto:" + destinataires +
                            "?subject=" + encodeURIComponent(subject) +
                            "&body=" + encodeURIComponent(body);

            // Ouvre le client de messagerie par défaut avec l'e-mail prérempli
            window.location.href = mailtoUrl;
        }
    </script>
</body>
</html>