package server;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.JSONObject;
/**
 * Servlet implementation class CausesServlet
 */
@WebServlet("/CausesServlet")
public class CausesServlet extends HttpServlet {
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
    public CausesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn=initDB();
		ArrayList<JSONObject> causes = new ArrayList<JSONObject>();
		try {
			Statement stmt = conn.createStatement();
			String SQL_QUERY= "Select cause_name, cause_id from causes;";
	        ResultSet rs = stmt.executeQuery(SQL_QUERY);
	        
	        while(rs.next()){
	            //Retrieve by column name
	            String cur_cause  = rs.getString("cause_name");
	            String cause_id = rs.getString("cause_id");
	            
	            JSONObject temp = new JSONObject();
	            temp.put("text", cur_cause);
	            temp.put("cause_id", cause_id);
	            
	            causes.add(temp);
	         }
		}
		catch(SQLException e)
		{
			System.out.println(e.getLocalizedMessage());
		}
		
		JSONObject j = new JSONObject();
		j.put("causes", causes);
		
		System.out.println(j.toJSONString());
		
		response.getWriter().append(j.toString());
	}

//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
