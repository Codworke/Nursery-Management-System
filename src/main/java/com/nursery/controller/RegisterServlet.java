package com.nursery.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import com.nursery.dao.UserDAO;
import com.nursery.model.User;

@WebServlet("../register")
public class RegisterServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String fullname = request.getParameter("uname");
        String email = request.getParameter("email");
        String password = request.getParameter("upass");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/nursery_db", "root", "root");

            UserDAO userDAO = new UserDAO(con);
            User user = new User(fullname, email, password);

            if(userDAO.registerUser(user)) {
                response.sendRedirect("html/home.html"); // redirect after success
            } else {
                response.getWriter().println("Registration failed!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
