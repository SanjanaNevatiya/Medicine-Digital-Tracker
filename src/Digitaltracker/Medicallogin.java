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
 * Servlet implementation class Medicallogin
 */
public class Medicallogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Medicallogin() {
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
		int id=Integer.parseInt(request.getParameter("Medicalid"));
	    Get.setMid(id);
	    String mname=request.getParameter("Medicalname");
	    Get.setName(mname);
	    String cont=request.getParameter("Contact");
	    Get.setCon(cont);
		String pwd=request.getParameter("Password");
		try {
			PreparedStatement pstmt=con.prepareStatement("select * from medical where Medical_id=? and Medical_password=? and Medical_name=? and Contact=? and Status=\"Approved\"");
			pstmt.setInt(1,id);
			pstmt.setString(2,pwd);
			pstmt.setString(3,mname);
			pstmt.setString(4,cont);
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				response.sendRedirect("medicalhome.html");
			}
			else
			{
				response.sendRedirect("Medicallogin.html");
			}
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
