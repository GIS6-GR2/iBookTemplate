package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.*;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	int slideNumber=0;
	private Dao HomeDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.HomeDao = daoFactory.getDaoImp();
    }
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("books", HomeDao.getAllBooks());
		
		request.setAttribute("categories", HomeDao.getAllCategories());

		this.getServletContext().getRequestDispatcher("/WEB-INF/view/home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 response.setContentType("text/jsp");  
		 RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("home.jsp");
		 dispatcher.forward(request, response);
		 
		 
	}

}
