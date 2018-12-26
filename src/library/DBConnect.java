package library;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			System.out.println("goto getconnection();");
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/baitapmang", "root", "kyphong1997");
			System.out.println("connect successfully");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
