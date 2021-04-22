package dao;

import java.util.List;
import beans.*;

public interface Dao {
	List<Book> getAllBooks();
	
	List<Category> getAllCategories();	
	
	Book getBookDetails(String idBook);
	
	void addNewBook(Book book);
	
	List<Book> BooksList();
	
	Admin getAdminParam();
	
	List<Category> categoriesWithId();	
	
	List<Client> getUser(String email);
	
	void addUser(Client client);
	
	Client getAccountDetails(String email);
	
	boolean updateProfile(String idUser, String firstName, String lastName, String email, String password, String newPwd, String confirmPwd);
	
	boolean updateAddress(String idUser, String firstName, String lastName, String city, String address, String postalCode, String phone, String email);
	
	List<Command> getOrders(String email);
	
}