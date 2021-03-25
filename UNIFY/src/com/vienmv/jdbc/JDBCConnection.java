package com.vienmv.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
public class JDBCConnection {
	public static Connection getJDBCConnection() {
		Connection connection = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Line 15 JDBCConnection");
			String user = "sa";
			String pass = "sa";
			String url = "jdbc:sqlserver://localhost:1433;databaseName=UNIFY";
			connection = DriverManager.getConnection(url, user, pass);
			System.out.println("thanh cong");
			
		} catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
		}
		return connection;
	}
	
}
