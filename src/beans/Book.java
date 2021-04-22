package beans;

import java.util.Date;

public class Book {
	
	private int idBook;
	private String name;
	private String author;
	private String nameCategory;
	private String coverPicture;
	private String binding;
	private String description;
	private float price;
	private int pageNumber;
	private float height;
	private float width;
	private Date publicationDate;
	private int idCategory;
	
	public Book() {
		
	}

	public Book(String name, String author, String coverPicture, String binding, String description, float price,
			int pageNumber, float height, float width, Date publicationDate, int idCategory) {
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

	public String getNameCategory() {
		return nameCategory;
	}

	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
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

	public String getCoverPicture() {
		return coverPicture;
	}

	public void setCoverPicture(String coverPicture) {
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

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}

	public float getWidth() {
		return width;
	}

	public void setWidth(float width) {
		this.width = width;
	}

	public Date getPublicationDate() {
		return publicationDate;
	}

	public void setPublicationDate(Date pubdate) {
		this.publicationDate = pubdate;
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}
	
}