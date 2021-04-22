package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dao.DaoFactory;

@WebServlet(name="ResetPasswordServlet", urlPatterns="/resetpwd")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Dao resetPwdDao;
	
	@Override
	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.resetPwdDao = daoFactory.getDaoImp();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/resetPassword.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		
		if(resetPwdDao.getUser(email).size() == 0) {
			request.setAttribute("invalidEmail", "Invalid email! Try again.");
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/resetPassword.jsp").forward(request, response);
		}else {
			//sendig a mail to user's email
			
			response.sendRedirect("login");
		}

	}

}
