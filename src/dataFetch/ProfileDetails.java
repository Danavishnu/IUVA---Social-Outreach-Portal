package dataFetch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ProfileDetails {
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

	public static String[] getProfileDetails(String user_id) {
		Connection conn = initDB();

		String[] result = new String[3];
		try {
			Statement stmt = conn.createStatement();

			String SQL_QUERY = "Select A.first_name, A.last_name, B.email from personal_details A INNER JOIN credentials B where A.user_id = B.user_id and A.user_id ="
					+ user_id + ";";
			ResultSet rs = stmt.executeQuery(SQL_QUERY);
			String first_name = "";
			String last_name = "";
			String email = "";
			boolean found = false;
			while (rs.next()) {
				// Retrieve by column name
				first_name = rs.getString("first_name");
				last_name = rs.getString("last_name");
				email = rs.getString("email");
				found = true;
//              Display values
				System.out.println("First Name: " + first_name);
				System.out.println("Last Name" + last_name);
				System.out.println("Email" + email);
				result[0] = first_name;
				result[1] = last_name;
				result[2] = email;
			}
			rs.close();

			return result;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getLocalizedMessage());
			return result;
		}
	}
}
