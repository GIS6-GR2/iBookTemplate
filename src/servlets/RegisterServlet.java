package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Client;
import dao.Dao;
import dao.DaoFactory;

@WebServlet(name="RegisterServlet", urlPatterns="/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Dao registerDao;
	
	@Override
	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.registerDao = daoFactory.getDaoImp();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(registerDao.getUser(email).size() != 0) {
			request.setAttribute("invalidEmail", "This email already in use! Try another email.");
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
		}else {
			Client c = new Client();
			c.setFirstName(firstName);
			c.setLastName(lastName);
			c.setEmail(email);
			c.setPassword(password);
			
			registerDao.addUser(c);
			
			String userName = lastName.concat(" ").concat(firstName);
			
			HttpSession userSession = request.getSession();
			userSession = request.getSession();
			userSession.setAttribute("userName", userName);
			response.sendRedirect("home");
		}
		

	}

}
