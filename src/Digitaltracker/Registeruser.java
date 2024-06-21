package Digitaltracker;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registeruser
 */
public class Registeruser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registeruser() {
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
		String uname=request.getParameter("Username");
		String pwd=request.getParameter("Password");
		String lat="0";
		String log="0";
		try {
			PreparedStatement pstmt1=con.prepareStatement("insert into user values(?,?,?,?,?)");
			pstmt1.setInt(1,id);
			pstmt1.setString(2,uname);
			pstmt1.setString(3,pwd);
			pstmt1.setString(4,lat);
			pstmt1.setString(5,log);
			int i1=pstmt1.executeUpdate();
			if(i1>0)
			{
//				PrintWriter out=response.getWriter();
//		    	out.println("Account Created");
				response.sendRedirect("userhome.html");
		    }
		    else
		    {
		    	response.sendRedirect("Registeruser.html");
		    }
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
