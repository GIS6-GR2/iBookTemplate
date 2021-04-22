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

@WebServlet("/myProfile")
public class MyProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Dao MyProfileDao;

    public void init() throws ServletException {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.MyProfileDao = daoFactory.getDaoImp();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
		
		// set logged in user info
		request.setAttribute("User", MyProfileDao.getAccountDetails((String)session.getAttribute("email")));
		
		// get logged in user account info
		String	action =  request.getParameter("action"),
			idUser = request.getParameter("idUser");
		
		String password = request.getParameter("password"),
			newPwd = request.getParameter("newPwd"),
			confirmPwd = request.getParameter("confPwd");
		
		String firstName = request.getParameter("fname"),
			lastName = request.getParameter("lname"),
			city = request.getParameter("city"),
			address = request.getParameter("address"),
			postalCode = request.getParameter("zip"),
			phone = request.getParameter("phone"),
			email = request.getParameter("email");
		
		// update logged in user account info
		if(idUser != null && action.equals("info")) {
			MyProfileDao.updateProfile(idUser, firstName, lastName, email, password, newPwd, confirmPwd);
		}

		// update logged in user address
		if(idUser != null && action.equals("address")) {
			MyProfileDao.updateAddress(idUser, firstName, lastName, city, address, postalCode, phone, email);
		}
		
		// set logged in user orders
		request.setAttribute("OrdersHistory", MyProfileDao.getOrders((String)session.getAttribute("email")));
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/view/myProfile.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}