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
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		String hashedPass = PasswordUtil.hashPassword(pass);
		
		try {
			Connection con = DBConnection.getConn();
			String sql = "select * from users where email=? and password=?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, hashedPass);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				String name = rs.getString("name");
				
				HttpSession session = req.getSession();
				
				session.setAttribute("user", name);
				session.setAttribute("email", email);
				
				res.sendRedirect("dashboard.jsp");
			}else {
				res.getWriter().println("Invalid email or password");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
