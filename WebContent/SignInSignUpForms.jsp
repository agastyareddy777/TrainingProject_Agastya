<%@ page language="java" import="javax.servlet.*,java.sql.*,javax.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Insert title here</title>

		<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="css/custom.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	</head>
<body>
		 <!-- <div class="container" style="background-color: white;"> -->
		<div class="container-fluid" style="background-color: white;">
			<!-- 1st row start -->
			<div class="row b">
				<!-- space col -->
				<div class="col-md-1">
				</div>
				
				<!-- col 1 start -->
				<div class="col-md-2" id="h7">
					<h5>contact us +91 40 6621777</h5>
				</div>
				<!-- col 1 end -->
				
			    <!--  col 2 start-->
			    <div class="col-md-7" id="a">
			    <h5 class="icon"><i class="fas fa-sign-in-alt"></i><button class="btn b">  sign in </button>
			    <i class="fas fa-user-plus"></i><button class="btn b">  sign up</button>
			    </div>
			    <!-- col 2 end -->
			    
			    <!--  col 3 start-->
			    <div class="col-md-2">
			    	<h5 class="icon">
			    		<button class="btn b"><i class="fab fa-facebook-f"></i></button>
			    		<button class="btn b"><i class="fab fa-google-plus-g"></i></button>
			    		<button class="btn b"><i class="fab fa-twitter"></i></button>
			    		<button class="btn b"><i class="fas fa-envelope-square"></i></button>
			    	</h5>
			    </div>
			    <!-- col 3 end -->
			</div>
			<!-- 1st row end -->
			
			<!-- 2nd row start -->
			<div class="row" style="background-color: white;">
			
			<!-- col 1 start -->	
				<div class="col-md-3" style="text-align:center;" ><br>
					<img src="images/logo.png"><br><br>
				</div>
				<!-- col 1 end -->
				
				<!-- col 2 start -->
				<div class="col-md-2" >
				</div>
				<!-- col 2 end -->
				
				<!-- col 3 start -->
				<div style="text-align:center;font-size:120%;" height="200"><br>
					<select><option value="electronics">electronics</option></select>
					<select><option value="men">men</option></select>
					<select><option value="women">women</option></select>
					<select><option value="baby&kids">baby&kids</option></select>
					<select><option value="home&furniture">home&furniture</option></select><br><br>
				</div>
				<!-- col 3 end -->
				
			</div>
			<!-- 2nd row end -->
			
			<!-- 3rd row start -->
			<div class="row" style="background-image:url('images/texture-bw.png;')">
			     <!-- col 1 start -->
			     <div class="col-md-6">
			     <h1 style="font-size:180%; text-align:center;">NEW ACOUNT/SIGN IN</h1>
			     </div>
			     <!-- col 1 end -->
				 <!-- col 2 start -->
			     <div class="col-md-6">
			     <h4 style="font-size:180%; text-align:center;">HOME /NEW ACOUNT/SIGN IN</h4>
			     </div>
			</div>
			<!-- 3rd row end -->
			
			<!-- 4th row start -->
			<div class="row">
				<!-- col 1 start -->
				<div class="col-md-2">
				</div>
				<!-- col 1 end -->
				<!-- col 2 start -->
				<div class="col-md-3">
					<h1>NEW ACCOUNT</h1>
					<p>not our register customer yet?</p>
                	<p >with registrations with us new world of fashion,fantastic discounts and much more opens to you! the whole process will not take you more than a minute</p>
					<p> if you have any questions,please feel free to contact us,our customer service center is working for 24/7.</p>
						<form action="signin" method="post">
  								name:<br>
  								<input class="form-control" type="text" name="f1"><br>
  								email:<br>
  								<input class="form-control" type="text" name="f2"><br>
  								password:<br>
  								<input class="form-control"  type="password" name="f3"><br>
  								<h4 class="ce"><input id="cy1" type="submit" value="REGISTER"></h4><br><br>
						</form>
						<% 
							String st =(String)session.getAttribute("status");
							/* boolean st = (boolean)session.getAttribute("status"); */
							if(st!=null){
							if(st.equals("true"))
							{
						%>
							<div class="alert alert-success" role="alert">
  									Successfully registered!
							</div>
						<%		
							}
							else
							{
						%>
							<div class="alert alert-danger" role="alert">
  										register again!
							</div>
						<%		
							}
							}
						%>
				</div>
				<!-- col 2 end -->
				<!-- col 3 start -->
				<div class="col-md-2">
				</div>
				<!-- col 3 end -->
				<!-- col 4 start -->
				<div class="col-md-3" >
					<h1>SIGN IN</h1>
					<p>already our customer</p>
                	<p >get access to your orders,wishlist,recommendations</p>
						<form action="login" method="post">
  								email:<br>
  								<input class="form-control" type="text" name="f1"><br>
  								password:<br>
  								<input class="form-control" type="password" name="f2"><br>
  								<h4 class="ce" ><input id="cy1" type="submit" value="LOGIN"></h4>
						</form>
				</div>
				<!-- col 4 end -->
			</div>
			<!-- 4th row end -->
			<!-- 5th row start -->
			<div class="row gr"><br><br>
			    
			    <!--col 1 start -->
			    <div class="col-md-1">
				</div>
				<!-- col 1 end -->
				<!-- col 2 start -->
				<div class="col-md-3" id="h7">
					<h4 id="bl">ABOUT US</h4>
					<p id="gy"> pellentesque habitant morbi tristique<br> senectus et netus et malesuada frames<br>ac turpis egestas</p>
					<hr><p id="white"> JOIN OUR MONTHLY NEWSLETTER</p>
						<br><form>
								<input type="text"><i id="sw" class="fa fa-paper-plane"></i>
						</form>
						<br>
				</div>
				<!-- col 2 end -->
				<!-- col 3 start -->
				<!-- col 3 end -->
				<!-- col 4 start -->
				<div class="col-md-3" id="h7">
					<h4>BLOG</h4>
						<div class="row">
							<div class="col-md-1">
								<img id="sp" src="images/detailsquare1.jpg" ><br><br>
								<img id="sp" src="images/detailsquare2.jpg" ><br><br>
								<img id="sp" src="images/detailsquare3.jpg" >
							</div>
							<div class="col-md-9">
								<p id="hp">BLOG POST NAME</p><br>
								<P id="hp">BLOG POST NAME</P><br>
								<P id="hp">VERY VERY LONG BLOG<br>POST NAME</P>
							</div>
						</div>
				</div>
				<!-- col 4 end -->
				<!-- col 5 start -->
				<div class="col-md-2" >
					<h4 id="wht">CONTACT</h4>
					<h5 id="gy ">
					<br>TECHASPECT SOLUTION PVT LTD.
					<br>PLOT NO 38 N HEIGHTS 3RD FLOOR
					<br>HITECH CITY PHASE 2 MADHAPUR
					<br>HYDERBAD, TELANGANA
					<br>500081
					<br>INDIA</P></h5>
						<form>
							<input id="cy1" type="submit" value=" go to contact page ">
						</form>
				</div>
				<!-- col 5 end -->
				<!-- col 6 start -->
				<div class="col-md-3" style="text-align:center;"><br><br>
					<img src="images/detailsquare1.jpg" width="50" height="60">
					<img src="images/detailsquare2.jpg" width="50" height="60" style="margin-left: 10px">
					<img src="images/detailsquare3.jpg" width="50" height="60" style="margin-left: 10px"><br/><br>
					<img src="images/detailsquare1.jpg" width="50" height="60">
					<img src="images/detailsquare2.jpg" width="50" height="60" style="margin-left: 10px">
					<img src="images/detailsquare3.jpg" width="50" height="60" style="margin-left: 10px">
				</div>
				<!-- col 6 end -->
			</div>
			<!-- 5th row end -->
			<!-- 6th row start -->
			<div class="row" style="background-color:black;"><br>
				<h1 style="color:white; font-size:120%;">2018.TechAspect Solutions Private Limited</h1><br>
			</div>
			<!-- 6th row end -->
		</div>
		<!-- end of container fluid -->
	
		<script src="js/jquery-3.3.1.js"></script>
		<script src="bootstrap/js/bootstrap.js"></script>

</body>
</html>