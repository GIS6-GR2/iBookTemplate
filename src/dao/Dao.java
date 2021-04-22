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
}