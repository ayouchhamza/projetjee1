<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    // Récupérer les paramètres du formulaire
    String annee = request.getParameter("annee");
    String infoAnnee = request.getParameter("infoAnnee");

    try {
        // Charger le pilote JDBC
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Informations de connexion à la base de données
        String url = "jdbc:mysql://localhost:3306/omran_db";
        String utilisateur = "root";
        String motDePasse = "";

        // Établir la connexion
        Connection connexion = DriverManager.getConnection(url, utilisateur, motDePasse);

        // Préparer la requête d'insertion pour les informations de l'année
        String sqlAnnee = "INSERT INTO annees (annee, info_annee) VALUES (?, ?)";
        PreparedStatement preparedStatementAnnee = connexion.prepareStatement(sqlAnnee);
        preparedStatementAnnee.setString(1, annee);
        preparedStatementAnnee.setString(2, infoAnnee);

        // Exécuter la requête d'insertion pour les informations de l'année
        int lignesAffecteesAnnee = preparedStatementAnnee.executeUpdate();

        // Fermer les ressources pour les informations de l'année
        preparedStatementAnnee.close();

        // Afficher le message en fonction du succès ou de l'échec de l'insertion pour les informations de l'année
        if (lignesAffecteesAnnee > 0) {
            out.println("Informatio	ns de l'année enregistrées avec succès !");
        } else {
            out.println("Aucune donnée de l'année enregistrée. Vérifiez les paramètres.");
        }

        // Fermer la connexion
        connexion.close();
    } catch (Exception e) {
        out.println("Erreur lors de l'enregistrement des informations de l'année : " + e.getMessage());
        e.printStackTrace();
    }
%>
