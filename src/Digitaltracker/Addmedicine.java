package Digitaltracker;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Registermedical
 */
@MultipartConfig(maxFileSize = 16177215)
public class Addmedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addmedicine() {
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
		int sn=0;
		int id=Get.getMid();
		String mename=Get.getName() ;
		String mname=request.getParameter("Medicinename");
		String mbrand=request.getParameter("MedicineBrand");
		int qt=Integer.parseInt(request.getParameter("Quantity"));
		String gender=request.getParameter("Gender");
		int age=Integer.parseInt(request.getParameter("Age"));
		String date=request.getParameter("Expiry");
		int price=Integer.parseInt(request.getParameter("Price"));
		int dis=Integer.parseInt(request.getParameter("Discount"));
		String contact=Get.getCon();
		InputStream inputStream = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("Image");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());

            //obtains input stream of the upload file
            //the InputStream will point to a stream that contains
            //the contents of the file
            inputStream = filePart.getInputStream();
        }
		try {
			PreparedStatement pstmt1=con.prepareStatement("insert into medicine values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt1.setInt(1,sn);
			pstmt1.setInt(2,id);
			pstmt1.setString(3,mename);
			pstmt1.setString(4,mname);
			pstmt1.setString(5,mbrand);
			pstmt1.setInt(6,qt);
			pstmt1.setString(7,gender);
			pstmt1.setInt(8,age);
			pstmt1.setString(9,date);
			pstmt1.setInt(10,price);
			pstmt1.setInt(11,dis);
			pstmt1.setString(12,contact);
			if(inputStream!=null){
				 pstmt1.setBinaryStream(13, inputStream,inputStream.available());
			 }
			int i1=pstmt1.executeUpdate();
			if(i1>0)
			{
//				PrintWriter out=response.getWriter();
//		    	out.println("Account Created");
				response.sendRedirect("medicalhome.html");
		    }
		    else
		    {
		    	response.sendRedirect("Addmedicine.html");
		    }
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
