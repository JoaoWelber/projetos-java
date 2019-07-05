package login.summit.registration;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider implements MyProvider {
	
	static Connection connection = null;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mariadb.Driver");// ele colocou: org.postgres.Driver
			connection = DriverManager.getConnection(connectionURL,username,password);
			
		} catch (Exception e) {
			
		 System.out.println(e);	
		}
		
		return connection;
	}

}
