package servlets.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


import beans.Book;
import dao.Dao;
import dao.DaoFactory;

@WebServlet(name="AdminDash", urlPatterns="/dashboard")
@MultipartConfig(fileSizeThreshold = 1048576, maxFileSize = 10485760, maxRequestSize = 52428800)
public class AdminDash extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String _UPLOAD_PATH = "C://";
	private Dao dao;
	
    public AdminDash() { super(); }

	public void init() throws ServletException {
		DaoFactory daoFactory = DaoFactory.getInstance();
		this.dao = daoFactory.getDaoImp();
	}
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	HttpSession session = request.getSession(false);
    	if (session.getAttribute("admin") == null) {
    		response.sendRedirect(this.getServletContext().getContextPath()+"/admin");
    	} else {
    		request.setAttribute("categories", dao.categoriesWithId()); // Categories List
    		request.setAttribute("books", dao.BooksList());
    		this.getServletContext().getRequestDispatcher("/WEB-INF/view/admin/dashboard.jsp").forward(request, response);
    	}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
    	if (session.getAttribute("admin") == null) {
    		response.sendRedirect(this.getServletContext().getContextPath()+"/admin");
    	} else {
    		/*
    		 * @Section : Create a Listing
    		 */
    		request.setAttribute("categories", dao.categoriesWithId()); // Categories List
    		
    		Book submitedBook = new Book();
    		submitedBook.setName(request.getParameter("booktitle").toString().trim());
    		submitedBook.setAuthor(request.getParameter("author").toString().trim());
    		submitedBook.setBinding(request.getParameter("binding").toString().trim());
    		submitedBook.setDescription(request.getParameter("desc").toString());
    		
    		try {
    			submitedBook.setIdCategory(Integer.parseInt(request.getParameter("category").toString().trim()));
    			submitedBook.setPrice(Float.parseFloat(request.getParameter("price").toString().trim()));
    			submitedBook.setPageNumber(Integer.parseInt(request.getParameter("pages").toString().trim()));
    			submitedBook.setHeight(Float.parseFloat(request.getParameter("height").toString().trim()));
    			submitedBook.setWidth(Float.parseFloat(request.getParameter("width").toString().trim()));
    		} catch (NumberFormatException ex) {
    			ex.printStackTrace();
    		}
    		
    		Date pubdate = null;
    		try {
    			pubdate = new SimpleDateFormat("YYYY-MM-DD").parse(request.getParameter("pubdate"));
    		} catch (ParseException e) {
    			e.printStackTrace();
    		}  
    		submitedBook.setPublicationDate(pubdate);
    		
    		Part cover = request.getPart("cover");
    		savingUploadedFile(cover);
    		submitedBook.setCoverPicture(getSubmittedFileName(cover));

    		dao.addNewBook(submitedBook);
    		
    		/*
    		 * @Section : Books List
    		 */
    		request.setAttribute("books", dao.BooksList());
    		
    		this.getServletContext().getRequestDispatcher("/WEB-INF/view/admin/dashboard.jsp").forward(request, response);
    	}	
	}
	
	private static void savingUploadedFile(Part uploadedFile) {
		try (InputStream input = uploadedFile.getInputStream()) {
			String fileName = uploadedFile.getSubmittedFileName();
	        Files.copy(input, new File(_UPLOAD_PATH, fileName).toPath());
	    }
	    catch (IOException e) {
	        e.printStackTrace();
	    }
	}
	
	private static String getSubmittedFileName(Part part) {
	    for (String cd : part.getHeader("content-disposition").split(";")) {
	        if (cd.trim().startsWith("filename")) {
	            String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
	            return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
	        }
	    }
	    return null;
	}
}
