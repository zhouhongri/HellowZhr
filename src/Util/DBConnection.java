package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static Connection c =null;
		public static Connection getconnection(){
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				 c = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "teaacher", "admin");		
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			} 
			return c;
			
		}
		public static void close(){
			if(c!=null){
				try {
					c.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
}

