package beans;

import java.sql.Date;

public class Command {
	
	private int idCommand;
	private Date commandDate;
	private int quantity;
	private double totalPrice;
	private String state;
	private int idClient;

	public Command(Date commandDate, int quantity, double totalPrice, String state, int idClient) {
		this.commandDate = commandDate;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.state = state;
		this.idClient = idClient;
	}

	public Command() {

	}

	public Date getCommandDate() {
		return commandDate;
	}


	public void setCommandDate(Date commandDate) {
		this.commandDate = commandDate;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public double getTotalPrice() {
		return totalPrice;
	}


	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}

	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}

	public int getIdCommand() {
		return idCommand;
	}

	public void setIdCommand(int idCommand) {
		this.idCommand = idCommand;
	}
	
	

}
