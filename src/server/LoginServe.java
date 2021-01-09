package server;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

import server.hasher;

@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
	static String dbname = "iuva";
	static String uname = "root";
	static String pwd = "vishnu17";
	
    public LoginServe() {
        // TODO Auto-generated constructor stub
    	System.out.println("Servelet myserve Reached !");
    	System.out.println(hasher.returnHash("eeeeesSSD431"));
    }
    
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		Connection conn=initDB();
		
		String email=request.getParameter("email");
		String password=hasher.returnHash(request.getParameter("password"));
		
		System.out.println(email);
		System.out.println(password);
		
		try {
			Statement stmt = conn.createStatement();
			String SQL_QUERY= "Select * from credentials where email=\""+ 
			email+"\"&& password=\""+password+"\";";
	        System.out.println(SQL_QUERY);
	        ResultSet rs = stmt.executeQuery(SQL_QUERY);
	        String user_name="";
	        int user_id=0;
	        String user_type="";
	        boolean found=false;
            while(rs.next()){
                //Retrieve by column name
                user_id  = rs.getInt("user_id");
                user_name = rs.getString("user_name");
                user_type=rs.getString("user_type");
                found=true; 
//                System.out.print("User_ID: " + user_id);
//                System.out.print(", UserName: " + user_name);
//                System.out.print(", First: " + internal_email + email);
//                System.out.println(", Last: " + internal_password + password);
             }
             rs.close();
             
             
            response.setIntHeader("Success", 200);
     	    response.setContentType("text/plain");
     		response.setCharacterEncoding("UTF-8");
     		
     		if(found) {
         		response.getWriter().append("1");
         		String username=user_name;
         		int userID=user_id;
         		
         		Cookie usernameCookie = new Cookie("username", user_name);
         	    Cookie emailCookie = new Cookie("email", email);
         	    Cookie passwordCookie = new Cookie("password", "password");
         	    
         	    HttpSession session = request.getSession();
         	    session.setAttribute("username", username);
         	    session.setAttribute("email", email);
         	    session.setAttribute("user_type", user_type);
         	    request.getSession().setAttribute("user_id", Integer.toString(user_id));

     		}
     		else {
         		response.getWriter().append("0");
     		}
     		
     		// get DB values
     		
     	    
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			 System.out.println(e.getLocalizedMessage());
		}
        
 
	 
	}

//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
////		Connection conn=initDB();
//
//		String email=request.getParameter("email");
//		String username=request.getParameter("username");
//
//		String password=request.getParameter("password");
//		System.out.println(email);
//		System.out.println(password);
//		System.out.println(username);
//		
//	
//	}

}