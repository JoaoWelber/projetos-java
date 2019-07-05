package login.summit.registration;

public interface ClientDAO {
	
	public int insertClient(Client c);
	public Client getClient(String userID, String password);
	
	

}
