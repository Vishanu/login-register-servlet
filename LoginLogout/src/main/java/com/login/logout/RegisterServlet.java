package com.login.logout;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String pass = req.getParameter("password");
        String hashedPass = PasswordUtil.hashPassword(pass);

        try {
            Connection con = DBConnection.getConn();

            // 🔍 Step 1: check email exist
            PreparedStatement check = con.prepareStatement(
                    "select * from users where email=?");
            check.setString(1, email);

            ResultSet rs = check.executeQuery();

            if(rs.next()) {

                // email already exist
                res.setContentType("text/html");
                res.getWriter().println(
                    "<script>alert('User already exists! Please login'); location='login.jsp';</script>"
                );

            } else {

                // 🔐 Step 2: insert new user
                PreparedStatement ps = con.prepareStatement(
                    "insert into users(name,email,password) values(?,?,?)");

                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, hashedPass);

                int i = ps.executeUpdate();

                if(i > 0){
                    res.sendRedirect("login.jsp");
                } else {
                    res.getWriter().println("Registration Failed");
                }
            }

        } catch(Exception e) {
            e.printStackTrace();
        }
    }
}
