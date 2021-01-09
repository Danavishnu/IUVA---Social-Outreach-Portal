package server;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatesServelet
 */
@WebServlet("/UpdatesServelet")
public class UpdatesServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatesServelet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    static String dbname = "iuva";
	static String uname = "root";
	static String pwd = "vishnu17";
	
    public static Connection initDB() {
    	try 
        {
        	Class.forName("com.mysql.cj.jdbc.Driver");
        }
        catch(ClassNotFoundException e) 
        {
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
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection conn=initDB();
		
		// String date = request.getParameter("date");
//		int post_id = 34;
		String post_title = request.getParameter("post_title");
		Random rand = new Random(System.currentTimeMillis());
		String date=request.getParameter("date");
		String post_id =  Integer.toString( (Integer.parseInt(date) + (rand.nextInt() % 10000007)) % 100000000);
		String post_content = request.getParameter("post_content");
		int user_id = Integer.parseInt((String) request.getSession().getAttribute("user_id"));

		System.out.println(post_title);
		System.out.println(post_content);
		System.out.println(user_id);
		
		try {
			Statement stmt = conn.createStatement();
			String SQL_QUERY_posts = "INSERT into posts values ("+ 
											post_id +", '"+post_title
											+ "','" +post_content +"', "+ Integer.toString(user_id)+");"; 
			
			System.out.println(SQL_QUERY_posts);
			stmt.executeUpdate(SQL_QUERY_posts);
			
			response.setIntHeader("Success", 200);
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().append("1");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getLocalizedMessage());
			response.getWriter().append("0");

		}
		
	}

}
