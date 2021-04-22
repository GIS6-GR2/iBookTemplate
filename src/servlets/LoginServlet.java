package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dao.DaoFactory;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Dao LoginDao;

	public LoginServlet() {
		super();
	}

	@Override
	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.LoginDao = daoFactory.getDaoImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession userSession;

		if (LoginDao.getUser(email).size() == 1 && LoginDao.getUser(email).get(0).getPassword().equals(password)) {

			String firstName = LoginDao.getUser(email).get(0).getFirstName();
			String lasttName = LoginDao.getUser(email).get(0).getLastName();
			String userName = lasttName.concat(" ").concat(firstName);

			userSession = request.getSession();
			userSession.setAttribute("userName", userName);
			userSession.setAttribute("email", email);
			response.sendRedirect("home");
		} else if (LoginDao.getUser(email).size() == 1 && !LoginDao.getUser(email).get(0).getPassword().equals(password)) {
			request.setAttribute("errorPassword", "invalid password! Try again.");
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
		} else {
			request.setAttribute("errorEmail", "invalid email! Try again.");
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);
		}

	}

}
