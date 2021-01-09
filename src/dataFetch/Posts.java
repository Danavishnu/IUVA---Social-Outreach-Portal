package dataFetch;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;

public class Posts {
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

	public static ArrayList<String[]> getPosts(String user_id) {
		Connection conn = initDB();

		ArrayList<String[]> posts = new ArrayList<String[]>();
		try {
			Statement stmt = conn.createStatement();

			String SQL_QUERY = "Select * from Posts user_id"
					+ user_id + ";";
			ResultSet rs = stmt.executeQuery(SQL_QUERY);
			String post_title = "";
			String content = "";
			boolean found = false;
			
            while (rs.next()) {
				// Retrieve by column name
				post_title = rs.getString("post_title");
				content = rs.getString("content");
                content = content.substring(0, Math.min(510, content.length()));
				found = true;

//              Display values
				System.out.println("Post Title: " + post_title);
				System.out.println("Content" + content);
				String[] cur_post = new String[2];

                cur_post[0] = post_title;
                cur_post[1] = content;

                posts.add(cur_post);
			}

			rs.close();
            Collections.reverse(posts);
			return posts;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getLocalizedMessage());
			return posts;
		}
	}
}
