package server;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import server.hasher;
/**
 * Servlet implementation class registerServelet
 */
@WebServlet("/registerServelet")
public class registerServelet extends HttpServlet {
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
    public registerServelet() {
        super();
        System.out.println("Reached me");
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println(request.getSession().getAttribute("username"));
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn=initDB();
		
		String email=request.getParameter("email");
		String username=request.getParameter("username");
		String password=hasher.returnHash(request.getParameter("password"));
		String user_id=request.getParameter("user_id");
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");

		System.out.println(email);
		System.out.println(password);
		System.out.println(username);
		System.out.println(user_id);
		System.out.println(first_name);
		System.out.println(last_name);
		
		try {
			Statement stmt = conn.createStatement();
			String SQL_QUERY_credentials= "INSERT INTO credentials VALUES ("+
                  user_id+",'"+
                  username+"','"+
                  email+"','"+
                  password+"','"+
                  "admin" +"')";
	        System.out.println(SQL_QUERY_credentials);
	        stmt.executeUpdate(SQL_QUERY_credentials);
	        String SQL_QUERY_personalDetails= "INSERT INTO personal_details VALUES ("+
	                  user_id+",'"+
	                  first_name+"','"+
	                  last_name+"','"+
	                  "male" +"')";
	        System.out.println(SQL_QUERY_personalDetails);
	        stmt.executeUpdate(SQL_QUERY_personalDetails);
             
            response.setIntHeader("Success", 200);
     	    response.setContentType("text/plain");
     		response.setCharacterEncoding("UTF-8");
         	response.getWriter().append("1");
     
     		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			 System.out.println(e.getLocalizedMessage());
	         response.getWriter().append("0");

		}

	}

}
