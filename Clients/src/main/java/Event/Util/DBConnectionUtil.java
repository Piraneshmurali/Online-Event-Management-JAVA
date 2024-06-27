package Event.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionUtil{

	private static Connection connection;
	
	// singleton pattern
	private DBConnectionUtil() {
	}

	public static Connection getDBConnection() throws ClassNotFoundException, SQLException {
		final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
		final String URL = "jdbc:mysql://localhost:3306/oop";
		final String USERNAME = "root";
		final String PASSWORD = "200119000572";
		
		if (connection == null || connection.isClosed()) {
			Class.forName(DRIVER_NAME);
			System.out.println("working");
			connection = DriverManager.getConnection(URL,USERNAME, PASSWORD);
			
		}
		return connection;
	}
	
}
