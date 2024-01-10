<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
    String email = request.getParameter("email");
    String motDePasse = request.getParameter("password");

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/votre_base_de_donnees";
        String utilisateur = "votre_utilisateur";
        String motDePasseDB = "votre_mot_de_passe";

        Connection connexion = DriverManager.getConnection(url, utilisateur, motDePasseDB);

        String sql = "SELECT * FROM enseignants WHERE email=? AND mot_de_passe=?";
        PreparedStatement preparedStatement = connexion.prepareStatement(sql);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, motDePasse);

        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            // L'enseignant est connecté avec succès
            // Vous pouvez rediriger vers la page appropriée ici
            response.sendRedirect("pageAccueilEnseignant.jsp");
        } else {
            // Échec de la connexion
            out.println("Échec de la connexion. Veuillez vérifier vos informations.");
        }

        resultSet.close();
        preparedStatement.close();
        connexion.close();
    } catch (Exception e) {
        out.println("Erreur lors de la connexion : " + e.getMessage());
        e.printStackTrace();
    }
%>
