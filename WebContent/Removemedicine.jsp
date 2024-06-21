<%@ page import="Digitaltracker.Dbconnection" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicine Digital Tracker</title>
</head>
<body>
<%
Connection con=Dbconnection.connect();
int id=Integer.parseInt(request.getParameter("id"));
PreparedStatement pstmt=con.prepareStatement("delete from medicine where Sr_no=?");
pstmt.setInt(1,id);
int i=pstmt.executeUpdate();
if(i>0)
{
	response.sendRedirect("Deletemedicine.jsp");
}
else
{
	response.sendRedirect("medicalhome.html");
}
%>
</body>
</html>