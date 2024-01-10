<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Traitement de Connexion Chef de filière</title>
    <!-- Ajoutez vos styles personnalisés ici -->
</head>
<body>
    <div class="container">
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
                String motDePasseDB = "";

                // Établir la connexion
                connexion = DriverManager.getConnection(url, utilisateur, motDePasseDB);

                // Préparer la requête de sélection
                String sql = "SELECT * FROM chefs_de_filiere WHERE email = ? AND mot_de_passe = ?";
                preparedStatement = connexion.prepareStatement(sql);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, motDePasse);

                // Exécuter la requête de sélection
                resultSet = preparedStatement.executeQuery();

                // Vérifier si l'utilisateur existe dans la base de données
                if (resultSet.next()) {
                    // Utilisateur trouvé, connecté avec succès
                    response.sendRedirect("index.jsp"); // Redirection vers la page d'accueil du chef de filière
                } else {
                    // Utilisateur non trouvé, connexion échouée
        %>
                    <p>Connexion échouée. Veuillez vérifier vos informations.</p>
        <%
                }
            } catch (Exception e) {
        %>
                <p>Erreur lors de la connexion : <%= e.getMessage() %></p>
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
