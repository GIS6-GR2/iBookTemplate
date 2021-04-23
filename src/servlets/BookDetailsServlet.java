package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dao.DaoFactory;


@WebServlet(name="BookDetailsServlet",urlPatterns="/bookDetails")
public class BookDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private Dao bookDetailsDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.bookDetailsDao = daoFactory.getDaoImp();
    }
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idBook = request.getParameter("idBook"); 
		System.out.print(idBook);
		
		request.setAttribute("bookDetails", bookDetailsDao.getBookDetails(idBook));
		System.out.println(bookDetailsDao.getBookDetails(idBook).getAuthor());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/bookDetails.jsp").forward(request, response);
	}



}
