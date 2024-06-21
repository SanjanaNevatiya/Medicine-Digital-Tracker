<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String lat=request.getParameter("lat");
  String lng=request.getParameter("lng");
  
  System.out.println("lat "+lat);
  System.out.println("lng "+lng);
  %>
<form action="Registermedical" method="post" onsubmit="return validation()">
				
					 
				    <center>
				
						<!-- <label>Address</label>
						<input type="text" placeholder="Address" name="address" required/>
					</div> 
					
				<br>
				<div>
				
				</div>	
					
						<label>Taluka</label>
						<input type="text" placeholder="taluka" name="taluka" required />
					</div>  -->
					
				<!--  <br>
				
					<label>Latitude</label>
						
						<input class="form-control" type="text" value="<%=lat %>" placeholder="lat" name="lat" required/> 
					</div> 
				<br>
					 <label>Longitude</label>
						
						<input class="form-control" type="text" value="<%=lng %>"placeholder="lng" name="lng" required/>
                                            
					</div>
					</div>
					<br/> -->
				

				<!--  <input type="submit" value="Submit"></div> -->
				</center>
				
				</form>
				




</body>
</html>

<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!--  <!DOCTYPE html> -->
<html lang="zxx">
<head>
<title>Medicine Digital Tracker</title>
<!-- for-meta-tags-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Health Plus Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free web designs for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-meta-tags-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
			<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Raleway:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">
</head>
	
<body style="background-image:url(https://c4.wallpaperflare.com/wallpaper/581/885/202/medicine-pharmacy-pills-fake-law-wallpaper-preview.jpg)">

	<div class="banner-bottom" id="about">
		<div class="container">
					

					<div class="book-appointment">
						<h4>Register Medical</h4>
								<form action="Registermedical" method="post">
								<div class="left-agileits-w3layouts same">
								<div class="gaps">
									<p>Medical_id</p>
										<input type="text" name="Medicalid" placeholder="1234" required=""/>
								</div>	
									<div class="gaps">	
									<p>Pharmacist</p>
										<input type="text" name="Pharmacist" placeholder="Name" required=""/>
									</div>
									<div class="gaps">
									<p>Medical_Password</p>
											<input type="text" name="Password" placeholder="Password" required="" />
									</div>	
									<!--  <div class="gaps">
									<p>Medical_Name</p>
									<input type="text" name="Medicalname" placeholder="Medical Name" required="" />
											
									</div> -->
								</div>
								<div class="right-agileinfo same">
								<div class="gaps">
									<p>Medical_Name</p>		
											<input  type="text" name="Medicalname" placeholder="Medical Name" required=""/>
								</div>
								
								<div class="gaps">
									<p>Medical_Location</p>		
											<input  type="text" name="Medicallocation" placeholder="Location" required=""/>
								</div>
								<div class="gaps">
									<p>Contact</p>		
											<input  type="text" name="contact" placeholder="Contact" required=""/>
								</div>
								<div class="gaps">
											
											<input class="form-control" type="hidden" value="<%=lat %>" placeholder="lat" name="lat" required/> 
								</div>
								
							   <div class="gaps">
											
											<input class="form-control" type="hidden" value="<%=lng %>"placeholder="lng" name="lng" required/> 
								</div>
								
								
								</div>
								<div class="clearfix"></div>
											  <input type="submit" value="Register Medical">
											  
								</form>
							</div>
					   </div>

		</div>
	</div>
<!-- //footer -->
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
 <!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="js/wickedpicker.js"></script>
			<script type="text/javascript">
				$('.timepicker').wickedpicker({twentyFour: false});
			</script>
		<!-- Calendar -->
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->

<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Health Plus
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				
			</div>
		</div>
	</div>
<!-- //bootstrap-pop-up -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
			<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>
	
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>