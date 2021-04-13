package beans;

import java.awt.Image;
import java.sql.Date;

public class Book {
	
	private int idBook;
	private String name;
	private String author;
	private Image coverPicture;
	private String binding;
	private String description;
	private String price;
	private String pageNumber;
	private String height;
	private String width;
	private Date publicationDate;
	private int idCategory;
	
	public Book() {
		
	}

	public Book(String name, String author, Image coverPicture, String binding, String description, String price,
			String pageNumber, String height, String width, Date publicationDate, int idCategory) {
		this.name = name;
		this.author = author;
		this.coverPicture = coverPicture;
		this.binding = binding;
		this.description = description;
		this.price = price;
		this.pageNumber = pageNumber;
		this.height = height;
		this.width = width;
		this.publicationDate = publicationDate;
		this.idCategory = idCategory;
	}

	public int getIdBook() {
		return idBook;
	}

	public void setIdBook(int idBook) {
		this.idBook = idBook;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Image getCoverPicture() {
		return coverPicture;
	}

	public void setCoverPicture(Image coverPicture) {
		this.coverPicture = coverPicture;
	}

	public String getBinding() {
		return binding;
	}

	public void setBinding(String binding) {
		this.binding = binding;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(String pageNumber) {
		this.pageNumber = pageNumber;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}

	public Date getPublicationDate() {
		return publicationDate;
	}

	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

}
