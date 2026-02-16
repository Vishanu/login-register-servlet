package com.login.logout;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	public static Connection getConn() {
		Connection con = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/servlet_project",
					"root",
					"Vishanu*2002@"
				);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
