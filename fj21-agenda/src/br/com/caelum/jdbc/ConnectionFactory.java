package br.com.caelum.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {

	public Connection getConnection() {
	 
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	  try {
		  
		 return DriverManager.getConnection(
		 "jdbc:mysql://localhost/fj21", "root", "root1234");
		 
		 }catch (SQLException e) {
	 	    throw new RuntimeException(e);
		  }
	}
}
