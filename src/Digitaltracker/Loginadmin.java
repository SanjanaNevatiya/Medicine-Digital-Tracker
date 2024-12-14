package Digitaltracker;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Digitaltracker.Dbconnection;


/**
 * Servlet implementation class Loginadmin
 */
public class Loginadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginadmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		Connection con=Dbconnection.connect();
		String email=request.getParameter("Adminemail");
		String pwd=request.getParameter("Password");
	
		try {
			PreparedStatement pstmt=con.prepareStatement("select * from admin where Admin_email=? and Admin_password=?" );
			pstmt.setString(1,email);
			pstmt.setString(2,pwd);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				response.sendRedirect("adminhome.html");
			}
			else
			{
				response.sendRedirect("Login.html");
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
