package com.OMRANweb.util;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if ("benmaajouzghali@gmail.com".equals(email) && "123456".equals(password)) {
            HttpSession session = request.getSession(true);
            session.setAttribute("email", email);
            response.sendRedirect("secraitairedab.jsp");
        } else {
            response.getWriter().println("Seul l'admin peut accéder.");
        }
    }
}
