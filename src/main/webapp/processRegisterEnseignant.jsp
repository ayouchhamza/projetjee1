<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String email = request.getParameter("email");
    String motDePasse = request.getParameter("password");

    Connection connexion = null;
    PreparedStatement preparedStatement = null;

    try {
        // Charger le pilote JDBC
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Informations de connexion à la base de données
        String url = "jdbc:mysql://localhost:3306/omran_db";
        String utilisateur = "root";
        String motDePasseDB = ""; // Mot de passe vide

        // Établir la connexion
        connexion = DriverManager.getConnection(url, utilisateur, motDePasseDB);

        // Préparer la requête d'insertion
        String sql = "INSERT INTO enseignants (nom, prenom, email, mot_de_passe) VALUES (?, ?, ?, ?)";
        preparedStatement = connexion.prepareStatement(sql);
        preparedStatement.setString(1, nom);
        preparedStatement.setString(2, prenom);
        preparedStatement.setString(3, email);
        preparedStatement.setString(4, motDePasse);

        // Exécuter la requête d'insertion
        int lignesAffectees = preparedStatement.executeUpdate();

        // Afficher le résultat de l'insertion
        if (lignesAffectees > 0) {
            out.println("Inscription réussie !");
        } else {
            out.println("Erreur lors de l'inscription. Veuillez réessayer.");
        }
    } catch (Exception e) {
        out.println("Erreur lors de l'inscription : " + e.getMessage());
        e.printStackTrace();
    } finally {
        // Fermer les ressources
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connexion != null) {
            try {
                connexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Résultat de l'Inscription</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>

    <div class="container">
        <h1> </h1>

        <!-- Bouton de redirection vers accueil.jsp -->
        <button onclick="window.location.href='accueil.jsp'" class="btn btn-primary">Accueil</button>
        <!-- Fin du bouton de redirection -->
        
        
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
