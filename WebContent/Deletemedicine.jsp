<%@ page import="Digitaltracker.Dbconnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="Digitaltracker.Get" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Digital Tracker</title>
</head>
<body style="background-image:url(https://images.pexels.com/photos/161449/medical-tablets-pills-drug-161449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)">
<%
Connection con=Dbconnection.connect();
int id=Get.getMid();
PreparedStatement pstmt1=con.prepareStatement("Select * from medicine where Medical_id=?");
pstmt1.setInt(1,id);
ResultSet rs=pstmt1.executeQuery();
%>
<center>
       <TABLE BORDER="3">
       <TR>
       <TH>Sr_no</TH>
       <TH>Medical_id</TH>
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
       <TH>Remove</TH>
       </TR>
       <%while(rs.next()){ %>
                <TR>
                <TD><%= rs.getInt(1) %></TD>
                <TD> <%= rs.getInt(2) %> </TD>
                <TD> <%= rs.getString(3) %></TD>
                 <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getInt(6) %></TD>
                <TD> <%= rs.getString(7) %></TD>
                <TD> <%= rs.getInt(8) %></TD>
                <TD> <%= rs.getString(9) %></TD>
                <TD> <%= rs.getInt(10) %></TD>
                <TD> <%= rs.getInt(11) %></TD>
                <TD> <%= rs.getString(12) %></TD>
                <TD><a href="Removemedicine.jsp?id=<%=rs.getInt(1)%>">Delete</a></TD>
                </TR>
                <% } %>
                
       </TABLE>
</center>
       
</body>
<a href="medicalhome.html">Go to Medical Home</a>
</body>
</html>