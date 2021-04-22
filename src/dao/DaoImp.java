package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Admin;
import beans.Book;
import beans.Category;

public class DaoImp implements Dao {

	private DaoFactory daoFactory;
	 
	DaoImp(DaoFactory daoFactory) {
		this.daoFactory = daoFactory;
	}
		
	@Override
	public List<Book> getAllBooks() {
		List<Book> books = new ArrayList<Book>();
		
		Connection connexion = null;
        PreparedStatement preparedStatement = null;
        try {
        	connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(  
			        "select * from book");
            ResultSet res = preparedStatement.executeQuery();
	        
	        while(res.next()) {
	        	Book b = new Book();
	        	b.setIdBook(res.getInt(1));
	        	b.setName(res.getString(2));
	        	b.setAuthor(res.getString(3));
	        	b.setCoverPicture(res.getString(4));
	        	b.setBinding(res.getString(5));
	        	b.setDescription(res.getString(6));
	        	b.setPrice(res.getFloat(7));
	        	b.setPageNumber(res.getInt(8));
	        	b.setHeight(res.getFloat(9));
	        	b.setWidth(res.getFloat(10));
	        	b.setPublicationDate(res.getDate(11));
	        	b.setIdCategory(res.getInt(12));
	        	books.add(b);
	        }
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
        
        return books;
	}

	@Override
	public List<Book> getCategBooks(String categName) {
		return null;
	}

	@Override
	public void addNewBook(Book book) {
		Connection connexion = null;
		PreparedStatement preparedStatement = null;
		
		try {
			String query = "INSERT INTO Book (Name, Author, cover_picture, binding, description, price, page, book_height, book_width, publication_date, Id_category)"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?);";
			
        	connexion = daoFactory.getConnection();
            preparedStatement = connexion.prepareStatement(query);
            
            preparedStatement.setString(1, book.getName());
            preparedStatement.setString(2, book.getAuthor());
            preparedStatement.setString(3, book.getCoverPicture());
            preparedStatement.setString(4, book.getBinding());
            preparedStatement.setString(5, book.getDescription());
            preparedStatement.setFloat(6, book.getPrice());
            preparedStatement.setInt(7, book.getPageNumber());
            preparedStatement.setFloat(8, book.getHeight());
            preparedStatement.setFloat(9, book.getWidth());
            preparedStatement.setDate(10, new java.sql.Date(book.getPublicationDate().getTime()));
            preparedStatement.setInt(11, book.getIdCategory());
            
            preparedStatement.executeUpdate();
            preparedStatement.close();
            
            
        } catch (SQLException e) {
            e.printStackTrace();
        }

	}

	@Override
	public List<Book> BooksList() {
		 List<Book> books = new ArrayList<Book>();
	        Connection connexion = null;
	        Statement statement = null;
	        ResultSet resultat = null;

	        try {
	            connexion = daoFactory.getConnection();
	            statement = connexion.createStatement();
	            resultat = statement.executeQuery("SELECT Id_Book, Name, Author, price FROM book;");

	            while (resultat.next()) {
	            	int id = resultat.getInt("Id_Book");
	                String title = resultat.getString("Name");
	                String author = resultat.getString("Author");
	                float price = resultat.getFloat("price");
	                
	                Book fetchedBook = new Book();
	                fetchedBook.setIdBook(id);
	                fetchedBook.setName(title);
	                fetchedBook.setAuthor(author);
	                fetchedBook.setPrice(price);
	                
	                books.add(fetchedBook);
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return books;
	}

	@Override
	public Admin getAdminParam() {
		Admin admin = new Admin();
        Connection connexion = null;
        Statement statement = null;
        ResultSet resultat = null;

        try {
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery("SELECT username, password FROM Admin;");

            while (resultat.next()) {
            	String username = resultat.getString("username");
                String password = resultat.getString("password");
                
                admin.setEmail(username);
                admin.setPassword(password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return admin;
	}

	@Override
	public List<Category> categoriesWithId() {
			List<Category> categories = new ArrayList<Category>();
			Connection connexion = null;
	        PreparedStatement preparedStatement = null;
	        try {
				connexion = daoFactory.getConnection();
		        preparedStatement = connexion.prepareStatement("select Id_category, name from category");
		        ResultSet res = preparedStatement.executeQuery();
		        while(res.next()) {
		        	Category catg = new Category();
		        	catg.setIdCategory(res.getInt("Id_category"));
		        	catg.setName(res.getString("name"));
		        	categories.add(catg);
		        }   
			} catch (Exception e) {
				e.printStackTrace();
			}
	        return categories;
	}
	
}