package com.OMRANweb.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMRANweb.util.DatabaseConnection;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<html>");
            out.println("<head><title>Test Servlet</title></head>");
            out.println("<body>");
            out.println("<h1>Test de connexion à la base de données</h1>");

            try (Connection connection = DatabaseConnection.getConnection()) {
                out.println("<p>Connexion réussie à la base de données!</p>");
            } catch (SQLException e) {
                out.println("<p>Erreur de connexion à la base de données: " + e.getMessage() + "</p>");
            }

            out.println("</body></html>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
