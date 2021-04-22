package servlets.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.Admin;
import dao.Dao;
import dao.DaoFactory;

@WebServlet(name="AdminLogin", urlPatterns="/admin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Dao dao;
	
    public AdminLogin() { super(); }
    
    public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.dao = daoFactory.getDaoImp();
	}
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	this.getServletContext().getRequestDispatcher("/WEB-INF/view/admin/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Admin realAdmin = dao.getAdminParam();
		HttpSession session = request.getSession();

		if(realAdmin.getEmail().equals((request.getParameter("username").toString()))
				&& realAdmin.getPassword().equals(request.getParameter("password").toString()) )
		{
	        session.setAttribute("admin", realAdmin);
	        response.sendRedirect(this.getServletContext().getContextPath()+"/dashboard");
		}
		else {
			this.getServletContext().getRequestDispatcher("/WEB-INF/view/admin/login.jsp").forward(request, response);
		}
	}

}
