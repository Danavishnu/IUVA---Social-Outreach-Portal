package dataFetch;

public class Transaction {

	private int amount;
	private String cause;
	
	public Transaction(int amount,String cause) {
		// TODO Auto-generated constructor stub
		this.amount=amount;
		this.cause=cause;
	}
	
	public int getAmount() {return this.amount;}
	public String getCause() {return this.cause;}

}
