<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Traitement d'Inscription Chef de filière</title>
    <!-- Ajoutez vos styles personnalisés ici -->
</head>
<body>
    <div class="container">
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
                String motDePasseDB = "";

                // Établir la connexion
                connexion = DriverManager.getConnection(url, utilisateur, motDePasseDB);

                // Préparer la requête d'insertion
                String sql = "INSERT INTO chefs_de_filiere (nom, prenom, email, mot_de_passe) VALUES (?, ?, ?, ?)";
                preparedStatement = connexion.prepareStatement(sql);
                preparedStatement.setString(1, nom);
                preparedStatement.setString(2, prenom);
                preparedStatement.setString(3, email);
                preparedStatement.setString(4, motDePasse);

                // Exécuter la requête d'insertion
                int lignesAffectees = preparedStatement.executeUpdate();

                // Afficher le résultat de l'inscription
                if (lignesAffectees > 0) {
        %>
                    <p>Inscription réussie !</p>
        <%
                } else {
        %>
                    <p>Erreur lors de l'inscription. Veuillez réessayer.</p>
        <%
                }
            } catch (Exception e) {
        %>
                <p>Erreur lors de l'inscription : <%= e.getMessage() %></p>
        <%
                e.printStackTrace();
            } finally {
                // Fermer les ressources
                // ...
            }
        %>
    </div>
</body>
</html>
