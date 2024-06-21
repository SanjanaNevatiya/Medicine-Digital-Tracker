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
  String lat=request.getParameter("lat");
  String lng=request.getParameter("lng");
  
  System.out.println("lat "+lat);
  System.out.println("lng "+lng);
  %>
<form action="Userlogin" method="post" onsubmit="return validation()">
				
					 
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
						<h4>User Login</h4>
								<form action="Userlogin" method="post">
								<div class="left-agileits-w3layouts same">
								<div class="gaps">
									<p>User_id</p>
										<input type="text" name="Userid" placeholder="1234" required=""/>
								</div>	
									<div class="gaps">	
									<p>User_password</p>
										<input type="text" name="Password" placeholder="Password" required=""/>
									</div>

								</div>
								<div class="right-agileinfo same">
								
								<div class="gaps">
									 	
											<input class="form-control" type="hidden" value="<%=lat %>" placeholder="lat" name="lat" required/> 
								</div>
								
								<div class="gaps">
									 		
											<input class="form-control" type="hidden" value="<%=lng %>"placeholder="lng" name="lng" required/> 
								</div>
								
								
								</div>
								
								<div class="clearfix"></div>
											  <input type="submit" value="Login"><br>
								<a href="Registeruser.html">Don't have account? Register User</a><br>	  
								<a href="Login.html">Admin Login</a><br>
								<a href="Medicallogin.html">Medical Login</a>	
										  
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
<style>
.button-73 {
  appearance: none;
  background-color: #FFFFFF;
  border-radius: 40em;
  border-style: none;
  box-shadow: #ADCFFF 0 -12px 6px inset;
  box-sizing: border-box;
  color: #000000;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,sans-serif;
  font-size: 0.7rem;
  font-weight: 700;
  letter-spacing: -.24px;
  margin: 0;
  outline: none;
  padding: 1rem 1.3rem;
  quotes: auto;
  text-align: center;
  text-decoration: none;
  transition: all .15s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-73:hover {
  background-color: #FFC229;
  box-shadow: #FF6314 0 -6px 8px inset;
  transform: scale(1.125);
}

.button-73:active {
  transform: scale(1.025);
}

@media (max-width: 108px) {
  .button-73 {
    font-size: 1.5rem;
    padding: .75rem 2rem;
  }
}
</style>
</body>
</html>