package login.summit.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginRegister
 */
@WebServlet("/LoginRegister")
public class LoginRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginRegister() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
		ClientDAO client = new ClientDAOimpl();
		
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		String submitType = request.getParameter("submit");
		
		Client client1 = client.getClient(userName, passWord);
		
		if (submitType.equals("login")/*de acordo com o name="login" do arquivo login.jsp*/ && client1 != null && client1.getName()!=null) {
			
			request.setAttribute("message", client1.getName());
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
			
		}else if (submitType.equals("Register")) {
			client1.setName(request.getParameter("name"));
			client1.setUsername(userName);
			client1.setPassword(passWord);
			client.insertClient(client1);
			request.setAttribute("successMessage", "Registration done. please login to proceed!!");
			
			
			
		}else {
			request.setAttribute("message", "Data not found. Click in Registration");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
			
		
		
	}

}
