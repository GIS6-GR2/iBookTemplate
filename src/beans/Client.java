package beans;

public class Client {
	
	private int idClient;
	private String firstName;
	private String lastName;
	private String phone;
	private int postalCode;
	private String city;
	private String adress;
	private String email;
	private String password;

	public Client(String firstName, String lastName, String phoneNumber, String city, String adress, String email, String password) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.phone = phoneNumber;
		this.city = city;
		this.adress = adress;
		this.email = email;
		this.password = password;
	}

	public Client() { }

	public int getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(int postalCode) {
		this.postalCode = postalCode;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phone;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phone = phoneNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	
	

}
