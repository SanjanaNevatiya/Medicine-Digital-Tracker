package Digitaltracker;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Digitaltracker.Get;

/**
 * Servlet implementation class Updatemedicine
 */
public class Updatemedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatemedicine() {
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
		int id=Get.getMid();
		String Mname=request.getParameter("Medicinename");
		String Brand=request.getParameter("Brand");
		int Stock=Integer.parseInt(request.getParameter("Stock"));
		
		PreparedStatement st1;
		try {
			st1=con.prepareStatement("Select * from medicine where Medical_id=? and Medicine_brand=? and Medicine_name=?");
			st1.setInt(1,id);
			st1.setString(2,Brand);
			st1.setString(3,Mname);
			ResultSet rs1=st1.executeQuery();
			while(rs1.next())
			{
			   int qt=rs1.getInt(6);
			} 
			PreparedStatement st2;
	        st2=con.prepareStatement("update medicine set Quantity=? where Medical_id=? and Medicine_brand=? and Medicine_name=? ");
	        st2.setInt(1,Stock);
	        st2.setInt(2,id);
	        st2.setString(3,Brand);
	        st2.setString(4,Mname);
	        int i1=st2.executeUpdate();
	        if(i1>0)
	        {
	        	response.sendRedirect("medicalhome.html");
	        }
	        else
	        {
	        	response.sendRedirect("Updatemedicine.html");
	        }
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	}


