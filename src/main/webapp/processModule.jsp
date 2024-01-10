<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    // Récupérer les données du formulaire
    String annee = request.getParameter("annee");
    String module = request.getParameter("module");
    String nomProf = request.getParameter("nomProf");
    String dateSeance = request.getParameter("dateSeance");
    String infoSeance = request.getParameter("infoSeance");

    Connection connection = null;
    PreparedStatement preparedStatement = null;

    try {
        // Charger le pilote JDBC
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Informations de connexion à la base de données
        String url = "jdbc:mysql://localhost:3306/omran_db";
        String utilisateur = "root";
        String motDePasse = "";

        // Établir la connexion
        connection = DriverManager.getConnection(url, utilisateur, motDePasse);

        // Préparer la requête d'insertion
        String sql = "INSERT INTO cahier_texte (annee, module, nomProf, dateSeance, infoSeance) VALUES (?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, annee);
        preparedStatement.setString(2, module);
        preparedStatement.setString(3, nomProf);
        preparedStatement.setString(4, dateSeance);
        preparedStatement.setString(5, infoSeance);

        // Exécuter la requête d'insertion
        int lignesAffectees = preparedStatement.executeUpdate();

        // Gérer le résultat de l'insertion
        if (lignesAffectees > 0) {
            out.println("Données enregistrées avec succès !");
        } else {
            out.println("Aucune donnée enregistrée. Vérifiez les paramètres.");
        }
    } catch (Exception e) {
        out.println("Erreur lors de l'enregistrement des données : " + e.getMessage());
        e.printStackTrace();
    } finally {
        // Fermer les ressources
        try {
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

<!-- Ajout du bouton de redirection vers accueil.jsp -->
<button onclick="window.location.href='accueil.jsp'" class="btn btn-primary">Accueil</button>
<!-- Fin du bouton de redirection -->
