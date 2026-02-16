package com.login.logout;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String email = (String) session.getAttribute("email");

		if(email == null) {
			resp.sendRedirect("login.jsp");
			return;
		}
		try {
			Connection con = DBConnection.getConn();
			
			PreparedStatement ps = con.prepareStatement("select * from users where email=?");
			ps.setString(1, email);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				req.setAttribute("name", rs.getString("name"));
				req.setAttribute("email", rs.getString("email"));
				
				RequestDispatcher rd = req.getRequestDispatcher("profile.jsp");
				
				rd.forward(req, resp);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
