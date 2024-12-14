<%@ page import="Digitaltracker.Dbconnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="Digitaltracker.Get" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body style="background-image:url(https://images.pexels.com/photos/161449/medical-tablets-pills-drug-161449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)" >
<%
Connection con=Dbconnection.connect();
String name=request.getParameter("Medicinename");
String gender=request.getParameter("Gender");
PreparedStatement pstmt1=con.prepareStatement("Select * from medicine where Medicine_name=? and Gender=?");
pstmt1.setString(1,name);
pstmt1.setString(2,gender);
ResultSet rs=pstmt1.executeQuery();
%>
<center>
       <TABLE BORDER="3">
       <TR>
       <TH>Medical_name</TH>
       <TH>Medicine_name</TH>
       <TH>Medicine_brand</TH>
       <TH>Quantity</TH>
       <TH>Gender</TH>
       <TH>Age</TH>
       <TH>Expiry_date</TH>
       <TH>Actual_price</TH>
       <TH>Discount</TH>
       <TH>Contact</TH>
       <TH>Image</TH>
       <TH>Distance</TH>
       
       </TR>
       <%while(rs.next()){ %>
                <TR>
                <TD> <%= rs.getString(3) %> </TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getInt(6) %></TD>
                <TD> <%= rs.getString(7) %></TD>
                <TD> <%= rs.getInt(8) %></TD>
                <TD> <%= rs.getString(9) %></TD>
                <TD> <%= rs.getInt(10) %></TD>
                <TD> <%= rs.getInt(11) %></TD>
                <TD> <%= rs.getString(12) %></TD>
                <TD><a href="viewimage.jsp?id=<%=rs.getInt(1)%>">View Image</a></TD>
                <% 
             int id1=rs.getInt("Medical_id");   
            double mlon = 0.0, mlat = 0.0, ulon = 0.0, ulat = 0.0, dist = 0.0;
            System.out.println("mid = "+id1);
            PreparedStatement pstmt2=con.prepareStatement("select * from medical where Medical_id=?"); 
            pstmt2.setInt(1,id1);
            ResultSet rs1=pstmt2.executeQuery();
            if(rs1.next()){
                             String mlat1 = rs1.getString("Latitude");
                             mlat=Double.parseDouble(mlat1);
                             System.out.println("mlat = "+mlat);
                            String mlon1 = rs1.getString("Longitude");
                            mlon=Double.parseDouble(mlon1);
                            System.out.println("mlon = "+mlon);
                             
                             }  
            int id=Get.getUid();
            PreparedStatement pstmt3=con.prepareStatement("select * from user where user_id=?") ;
            pstmt3.setInt(1,id);
            ResultSet rs2=pstmt3.executeQuery();
            if(rs2.next()){
                             String ulat1 = rs2.getString("Latitude"); 
                             ulat=Double.parseDouble(ulat1);
                             System.out.println("ulat = "+ulat);
                              String ulon1 = rs2.getString("Longitude");
                              ulon=Double.parseDouble(ulon1);
                              System.out.println("ulon = "+ulon);
                            } 
            dist = Get.distance(ulat, mlat, ulon, mlon);
            %> 
            <TD><%=Math.round( dist* 100.0) / 100.0  %>&nbsp;KM</TD>  
            </TR>    
                <% } %>
                
       </TABLE>
</center>
       
</body>
<a href="userhome.html">Go to User Home</a>

</body>
</html>