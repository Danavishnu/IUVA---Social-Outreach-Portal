package dataFetch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;

public class TransactionHistory {
	static String dbname = "iuva";
	static String uname = "root";
	static String pwd = "vishnu17";

	public static Connection initDB() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("Class not found: " + e);
		}
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + dbname, uname, pwd);
			return conn;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	public static ArrayList<Transaction> getTransactionHistory(String user_id) {
		Connection conn = initDB();
		ArrayList<Transaction> transactions = new ArrayList<Transaction>();

		try {
			Statement stmt = conn.createStatement();
			Statement stmt_cause = conn.createStatement();
			String SQL_QUERY = "Select * from donations where user_id=" + user_id + ";";
			System.out.println(SQL_QUERY);
			ResultSet rs = stmt.executeQuery(SQL_QUERY);
			int amount = 0;
			int cause_id = 0;
			String cause_name = "";
			boolean found = false;
			while (rs.next()) {
				// Retrieve by column name
				amount = rs.getInt("amount");
				cause_id = rs.getInt("cause_id");
				found = true;
				// Display values
				System.out.println("Amount :" + Integer.toString(amount));
				System.out.println("Cause ID: " + Integer.toString(cause_id));

				String SQL_QUERY_cause = "Select * from causes where cause_id=" + Integer.toString(cause_id) + ";";
				System.out.println(SQL_QUERY_cause);
				ResultSet rs_cause = stmt_cause.executeQuery(SQL_QUERY_cause);
				if (rs_cause.next()) {
					cause_name = rs_cause.getString("cause_name");
					System.out.println("Cause Name : " + cause_name);
					rs_cause.close();
				}
				transactions.add(new Transaction(amount, cause_name));
			}
			rs.close();

			return transactions;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getLocalizedMessage());
			return transactions;
		}
	}

}
