package com.nursery.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.nursery.dao.UserDAO;
import com.nursery.model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password"); // make sure name matches HTML

        if(email == null || password == null) {
            response.getWriter().println("Email or Password missing");
            return;
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/nursery_db?useSSL=false&serverTimezone=UTC",
                "root",
                "password"
            );

            UserDAO userDAO = new UserDAO(con);
            User user = userDAO.loginUser(email, password);

            if (user != null) {
                HttpSession session = request.getSession();
                session.setAttribute("currentUser", user);

                // safer redirect
                response.sendRedirect(request.getContextPath() + "/htmlpages/home.html");
            } else {
                response.getWriter().println("Invalid email or password");
            }

            con.close();

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Server Error");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/htmlpages/login.html");
    }
}
