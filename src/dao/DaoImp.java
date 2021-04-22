package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import beans.Admin;
import beans.Book;
import beans.Category;
import beans.Client;

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
			        "select * from book,category where book.Id_category = category.Id_category ");
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
	        	b.setNameCategory(res.getString(14));
	        	books.add(b);
	        }
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
        
        return books;
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

	@Override
	public List<Category> getAllCategories() {
		List<Category> categories = new ArrayList<Category>();
		Connection connexion = null;
        PreparedStatement preparedStatement = null;
        try {
				connexion = daoFactory.getConnection();
	        preparedStatement = connexion.prepareStatement(  
			        "select * from category");
	        ResultSet res = preparedStatement.executeQuery();
	        while(res.next()) {
	        	Category c = new Category();
	        	c.setIdCategory(res.getInt(1));
	        	c.setName(res.getString(2));
	        	categories.add(c);
	        }
	        
		} catch (Exception e) {
			e.printStackTrace();
		}
        return categories;
		
	}

	@Override
	public List<Client> getUser(String email) {

		List<Client> users = new ArrayList<Client>();
		Connection connection;
		PreparedStatement preparedStatement;
		try {
			connection = daoFactory.getConnection();
			preparedStatement = connection.prepareStatement("select * from client where email = ?");
			preparedStatement.setString(1, email);
			ResultSet res = preparedStatement.executeQuery();

			while (res.next()) {
				Client c = new Client();
				c.setIdClient(res.getInt(1));
				c.setFirstName(res.getString(2));
				c.setLastName(res.getString(3));
				c.setPhoneNumber(res.getString(4));
				c.setCity(res.getString(5));
				c.setAdress(res.getString(6));
				c.setPostalCode(res.getInt(7));
				c.setEmail(res.getString(8));
				c.setPassword(res.getString(9));
				users.add(c);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return users;
	}

	@Override
	public void addUser(Client client) {
		Connection connection;
		PreparedStatement preparedStatement;
		try {
			connection = daoFactory.getConnection();
			preparedStatement = connection.prepareStatement("insert into client (first_name, last_name, email, password) values (?,?,?,?)");
			preparedStatement.setString(1, client.getFirstName());
			preparedStatement.setString(2, client.getLastName());
			preparedStatement.setString(3, client.getEmail());
			preparedStatement.setString(4, client.getPassword());
			preparedStatement.execute();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public Book getBookDetails(String idBook) {
		Book b = new Book();
		Connection connection;
		PreparedStatement preparedStatement;
			try {
				connection = daoFactory.getConnection();
				preparedStatement = connection.prepareStatement("select * from book where Id_Book = ?");
				preparedStatement.setString(1, idBook);
				ResultSet res = preparedStatement.executeQuery();
	
				while (res.next()) {
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
		        	b.setNameCategory(res.getString(14));
				}
	
			} catch (SQLException e) {
				e.printStackTrace();
			}
		return b;
	}
	
}