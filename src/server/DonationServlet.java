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
 * Servlet implementation class DonationServlet
 */
@WebServlet("/DonationServlet")
public class DonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
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
     * @see HttpServlet#HttpServlet()
     */
    public DonationServlet() {
        super();
        // TODO Auto-generated constructor stub
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
		String cause_id = request.getParameter("cause_id");
		String amount = request.getParameter("amount");
		String user_id = (String) request.getSession().getAttribute("user_id");
		String date = request.getParameter("date");
		
		Random rand = new Random(System.currentTimeMillis());
		
		String donation_id = Integer.toString( (Integer.parseInt(date) + (rand.nextInt() % 10000007)) % 100000000);
//		
//		System.out.println(cause_id);
//		System.out.println(amount);
//		System.out.println(user_id);
//		System.out.println(date);
//		System.out.println(donation_id);
		
		Connection conn=initDB();
		try {
		Statement stmt = conn.createStatement();
		String SQL_QUERY= "INSERT INTO donations VALUES ("+
              donation_id+",'"+
              user_id+"','"+
              cause_id+"','"+
              amount+"','"+
              date +"')";
//        System.out.println(SQL_QUERY);
        stmt.executeUpdate(SQL_QUERY);
		}
		catch (Exception e)
		{
			System.out.println("Internal Server Error : Could not insert into donations");
			response.getWriter().append("error");
			return;
		}
		
		response.getWriter().append("success");
	}

}
