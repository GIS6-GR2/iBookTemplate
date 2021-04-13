package beans;

public class Category {
	
	private int idCategory;
	private String name;

	public Category() {
		
	}

	public Category(String name) {
		this.name = name;
	}

	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
