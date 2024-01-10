<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Résultats du formulaire</title>
</head>
<body>
    <h1>Résultats du formulaire</h1>

    <div>
        <%-- Récupérer les données à partir des paramètres de requête --%>
        <%
            try {
                String nom = request.getParameter("nom");
                String prenom = request.getParameter("prenom");
                String age = request.getParameter("age");
                String anneeDebut = request.getParameter("anneeDebut");
                String dateNaissance = request.getParameter("dateNaissance");
                String email = request.getParameter("email");
                String poste = request.getParameter("poste");

                // Charger le pilote JDBC
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Informations de connexion à la base de données
                String url = "jdbc:mysql://localhost:3306/omran_db";
                String utilisateur = "root";
                String motDePasse = "";

                // Établir la connexion
                Connection connexion = DriverManager.getConnection(url, utilisateur, motDePasse);

                // Préparer la requête d'insertion
                String sql = "INSERT INTO employes (nom, prenom, age, annee_debut_travail, date_naissance, email, poste) VALUES (?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement preparedStatement = connexion.prepareStatement(sql);
                preparedStatement.setString(1, nom);
                preparedStatement.setString(2, prenom);
                preparedStatement.setInt(3, Integer.parseInt(age));
                preparedStatement.setInt(4, Integer.parseInt(anneeDebut));
                preparedStatement.setString(5, dateNaissance);
                preparedStatement.setString(6, email);
                preparedStatement.setString(7, poste);

                // Exécuter la requête d'insertion
                int lignesAffectees = preparedStatement.executeUpdate();

                // Fermer les ressources
                preparedStatement.close();
                connexion.close();

                // Afficher le message en fonction du succès ou de l'échec de l'insertion
                if (lignesAffectees > 0) {
                    out.println("Données enregistrées avec succès !");
                } else {
                    out.println("Aucune donnée enregistrée. Vérifiez les paramètres.");
                }
            } catch (Exception e) {
                out.println("Erreur lors de l'enregistrement des données : " + e.getMessage());
                e.printStackTrace();
            }
        %>
    </div>
</body>
</html>
