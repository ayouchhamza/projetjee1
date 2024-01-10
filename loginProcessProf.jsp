<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String email = request.getParameter("email");
    String motDePasse = request.getParameter("password");

    Connection connexion = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;

    try {
        // Charger le pilote JDBC
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Informations de connexion à la base de données
        String url = "jdbc:mysql://localhost:3306/omran_db";
        String utilisateur = "root";
        String motDePasseDB = ""; // Mot de passe vide

        // Établir la connexion
        connexion = DriverManager.getConnection(url, utilisateur, motDePasseDB);

        // Préparer la requête de sélection
        String sql = "SELECT * FROM enseignants WHERE email=? AND mot_de_passe=?";
        preparedStatement = connexion.prepareStatement(sql);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, motDePasse);

        // Exécuter la requête de sélection
        resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            // L'enseignant est authentifié
            // Récupérer les informations de l'enseignant
            String nomEnseignant = resultSet.getString("nom");
            String prenomEnseignant = resultSet.getString("prenom");

            // Créer une session pour l'enseignant
            session.setAttribute("emailEnseignant", email);
            session.setAttribute("nomEnseignant", nomEnseignant);
            session.setAttribute("prenomEnseignant", prenomEnseignant);

            // Redirection vers la page annee.jsp
            response.sendRedirect("annee.jsp");
        } else {
            // L'authentification a échoué
            out.println("Email ou mot de passe incorrect. Veuillez réessayer.");
        }
    } catch (Exception e) {
        out.println("Erreur lors de la connexion : " + e.getMessage());
        e.printStackTrace();
    } finally {
        // Fermer les ressources
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
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
