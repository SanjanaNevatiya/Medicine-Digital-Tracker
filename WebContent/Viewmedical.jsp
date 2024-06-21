<%@ page import="Digitaltracker.Dbconnection" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image:url(https://images.pexels.com/photos/161449/medical-tablets-pills-drug-161449.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1)" style="opacity:1" />
<%
Connection con=Dbconnection.connect();
String status="Approved";
PreparedStatement pstmt1=con.prepareStatement("Select * from medical where Status=?");
pstmt1.setString(1,status);
ResultSet rs=pstmt1.executeQuery();
%>
<center>
       <TABLE BORDER="3">
       <TR>
       <TH>Medical_id</TH>
       <TH>Pharmacist</TH>
       <TH>Medical_Password</TH>
       <TH>Medical_name</TH>
       <TH>Medical_Location</TH>
       <TH>Contact</TH>
       <TH>Status</TH>
       </TR>
       <%while(rs.next()){ %>
                <TR>
                <TD> <%= rs.getInt(1) %> </TD>
                <TD> <%= rs.getString(2) %></TD>
                <TD> <%= rs.getString(3) %></TD>
                <TD> <%= rs.getString(4) %></TD>
                <TD> <%= rs.getString(5) %></TD>
                <TD> <%= rs.getString(6) %></TD>
                <TD> <%= rs.getString(7) %></TD>
                </TR>
                <% } %>
                
       </TABLE>
</center>
       
</body>
<a href="adminhome.html">Go to Admin Home</a>
</body>
</html>