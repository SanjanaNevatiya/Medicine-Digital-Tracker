<%@ page import="Digitaltracker.Dbconnection" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>
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
PreparedStatement pstmt=con.prepareStatement("select * from medicine where Sr_no=?");
pstmt.setInt(1,id);
ResultSet rs=pstmt.executeQuery();
%>
<%while(rs.next()){ 
    		byte[] imageData = rs.getBytes(13);

  	      String base64Image = Base64.getEncoder().encodeToString(imageData);

    	%>
    	<center>
    	<div class="col-md-3"></div>
        <div class="col-md-3 product-grid">
    		<div class="product-items">
	    		    <div class="project-eff">
	    		    <div>
						<div id="nivo-lightbox-demo"> <p> <a href="images/pro1.jpg"data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"><span class="rollover1"> </span> </a></p></div>     
							<img class="img-responsive" src="data:image/jpeg;base64, <%= base64Image%>" height="50%" width="50%" alt="">
					</div>
					</div>
					</center>

<%} %>


</body>
</html>