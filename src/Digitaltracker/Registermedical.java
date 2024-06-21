package Digitaltracker;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registermedical
 */
public class Registermedical extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registermedical() {
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
		String pname=request.getParameter("Pharmacist");
		String pwd=request.getParameter("Password");
		String mname=request.getParameter("Medicalname");
		String loc=request.getParameter("Medicallocation");
		String status="Not Approved";
		String Latitude=request.getParameter("lat");
		String Longitude=request.getParameter("lng");
		String contact=request.getParameter("contact");
		try {
			PreparedStatement pstmt1=con.prepareStatement("insert into medical values(?,?,?,?,?,?,?,?,?)");
			pstmt1.setInt(1,id);
			pstmt1.setString(2,pname);
			pstmt1.setString(3,pwd);
			pstmt1.setString(4,mname);
			pstmt1.setString(5,loc);
			pstmt1.setString(6,contact);
			pstmt1.setString(7,status);
			pstmt1.setString(8,Latitude);
			pstmt1.setString(9,Longitude);
			int i1=pstmt1.executeUpdate();
			if(i1>0)
			{
//				PrintWriter out=response.getWriter();
//		    	out.println("Account Created");
				response.sendRedirect("medicalhome.html");
		    }
		    else
		    {
		    	response.sendRedirect("Registermedical.html");
		    }
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
