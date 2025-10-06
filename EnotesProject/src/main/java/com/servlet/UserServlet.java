package com.servlet;   // ✅ corrected spelling

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.UserDAO;
import com.DB.DBConnect;
import com.user.UserDetails;

@WebServlet("/UserServlet")   // ✅ mapping
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // create user object
        UserDetails us = new UserDetails();
        us.setName(name);
        us.setEmail(email);
        us.setPassword(password);

        // insert into DB
        UserDAO dao = new UserDAO(DBConnect.getConn());
        boolean f = dao.addUser(us);

        HttpSession session = request.getSession();

        if (f) {
            session.setAttribute("reg-Success", "Registration Successful ✅");
            response.sendRedirect("register.jsp");
        } else {
            session.setAttribute("failed-msg", "❌ Something went wrong, please try again!");
            response.sendRedirect("register.jsp");
        }
    }
}
