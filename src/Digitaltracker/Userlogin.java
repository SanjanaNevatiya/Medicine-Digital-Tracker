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

/**
 * Servlet implementation class Userlogin
 */
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
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
		int id=Integer.parseInt(request.getParameter("Userid"));
		Get.setUid(id);
		String pwd=request.getParameter("Password");
		String Latitude=request.getParameter("lat");
		String Longitude=request.getParameter("lng");
		
		try {
			PreparedStatement pstmt=con.prepareStatement("update user set Latitude=?,Longitude=? where user_id=? and user_password=? ");
			pstmt.setString(1,Latitude);
			pstmt.setString(2,Longitude);
			pstmt.setInt(3,id);
			pstmt.setString(4,pwd);
			int i=pstmt.executeUpdate();
			
			if(i>0)
			{
				response.sendRedirect("userhome.html");
			}
			else
			{
				response.sendRedirect("Userlogin.jsp");
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
