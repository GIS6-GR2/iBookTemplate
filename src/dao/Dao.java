package dao;

import java.util.List;
import beans.*;

public interface Dao {
	List<Book> getAllBooks();
	List<Book> getCategBooks(String categName);
	
	void addNewBook(Book book);
	List<Book> BooksList();

	Admin getAdminParam();
	
	List<Category> categoriesWithId();
	
}