package dao;

import java.sql.*;

public class DaoFactory {

	private String url, username, password;
	
	public DaoFactory(String url, String username, String password) {
		this.url = url;
		this.username = username;
		this.password = password;
	}
	
	public static DaoFactory getInstance() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		DaoFactory instance = new DaoFactory("jdbc:mysql://127.0.0.1/ibook_db","root","oufrad 2020");
		return instance;
	}
	
	public Connection getConnection() throws SQLException {
		 return DriverManager.getConnection(url,username,password);
	}
	
	public Dao getDaoImp() {
		return new DaoImp(this);
	}
}
