package login.summit.registration;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClientDAOimpl implements ClientDAO {
	static Connection connection;
	static PreparedStatement ps;

	@Override
	public int insertClient(Client c) {
	int status = 0;
	
	try {
		
		connection = ConnectionProvider.getConnection();
		ps = connection.prepareStatement("insert into client values (?,?)");
		ps.setString(1, c.getName());
		ps.setString(2, c.getUsername());
		ps.setString(3, c.getEmail());
		ps.setString(4, c.getPassword());
		status = ps.executeUpdate();
		
		connection.close();
		
	} catch (Exception e) {

		System.out.println(e);
	}
		return status;
	}

	@Override
	public Client getClient(String userID, String password) {
		
        Client client = new Client();
		try {
			connection = ConnectionProvider.getConnection();
			ps = connection.prepareStatement("select * from Cliente where userid=? and password=?");
			ps.setString(1, userID);
			ps.setString(2, password);
			
			ResultSet result = ps.executeQuery();
			
			while (result.next()) {
				client.setName(result.getString(1));
				client.setUsername(result.getString(2));
				client.setEmail(result.getString(3));
				client.setPassword(result.getString(4));
			}
			
			
		} catch (Exception e) {

		System.out.println();
		}
		
		return null;
	}



}
