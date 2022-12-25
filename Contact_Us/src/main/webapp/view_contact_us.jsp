<%-- 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<%
if(request.getParameter("id")!=null)
{
	   Connection con=DB.getConnection();
	   String id=request.getParameter("id");
	   PreparedStatement ps;
	   ps=con.prepareStatement("delete from contact where contactus_id="+id+";");
	   ps.executeUpdate();
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>LOGIN/Services-Solo Music Center</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type = "text/css" href="styles/aboutus.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type = "text/css" href="styles/Main.css?v=<?php echo time(); ?>" >
	<link rel="stylesheet" type = "text/css" href="styles/Login.css?v=<?php echo time(); ?>" >
	
	
	<style>
	.wrapper{ 
      width: 500px; 
      padding: 20px; 
    }
    .wrapper h2 {text-align: center}
    .wrapper form .form-group span {color: red;}
  </style>
</head>
<body>

<header>
		<video autoplay muted loop id="myVideo">
          <source src="images/SOLO MUSIC.mp4" type="video/mp4">
        </video>
		
		<!-- user account button -->
		<div >
          <button class="bttn1" type="button" id="btn1" onclick=""><a href="https://courseweb.sliit.lk/"><i style="font-size:24px" class="fa">&#xf2be;</i> User Account</a></button>
        </div>
       

		<!-- navbar -->
		<ul class="menu">
          <li class="menu"> <a href="home222.html"><i class="fa fa-fw fa-home"></i> HOME</a> </li>
          <li class="menu"> <a href="product.html"> PRODUCTS </a> </li>
          <li class="menu"> <a href="login.html">USER LOGIN </a> </li>
          <li class="menu"> <a href="Useraccount.html"> SIGN UP </a> </li>
          <li class="menu"> <a href="adminlogin.html"> ADMIN LOGIN  </a> </li>
          <li class="menu"> <a href="contact.html"> CONTACT US </a> </li>
          <li class="menu"> <a href="About us.html"> ABOUT US </a> </li>
        </ul>
        <!-- end navbar -->
  
	</header>


 <!-- ----LOGIN---- -->
    <div class="box">
  <main>
    <section class="container wrapper">
      <h2 class="display-4 pt-3">Delete User</h2>
          
          <form action="DeleteUserServlet" method="POST">
           <table>
           <tr>
           <td>User ID</td>
           <td>First Name</td>
           <td>Last Name</td>
           <td>User Email</td>
            <td>Message</td>
           </tr>
           <%
           Connection con=DB.getConnection();
           String sql="select * from contact ;";
           PreparedStatement pst;
           pst=con.prepareStatement(sql);
           ResultSet rst=pst.executeQuery();
           
           while(rst.next())
           {
        	   String id=rst.getString("contactus_id");
        	   String name=rst.getString("name");
        	   String tp=rst.getString("tp");
        	   String msg=rst.getString("msg");
        	   String email=rst.getString("email");
           %>

            <tr>
           <td ><%= id %></td>
           <td><%= name %></td>
           <td><%= tp %></td>
             <td><%= email %></td>
           <td><%= msg %></td>
           <td><a href="viewcontactus.jsp?id=<%= id%>">Delete</a></td>
           <td><a href="updatecontactus.jsp?idu=<%= id%>&n=<%= name%>&tp=<%= tp%>&email=<%= email%>&msg=<%= msg%>">Update</a></td>
           </tr>
           <%
           }
           
           %>
           </table>
          </form >
         
           
    </section>
  </main>
  </div>
  
  <!--footer-->
	<footer>
		<div class="foot">
			<img class="footimage" src="images/foot.png">
			<div class="footer">


				<center>
					<p class="footcolor">Copyrights reserved @ 2021 SOLO Music Center.com</p>
					<a href="contactus.html">Privacy policy | Terms and conditions</a>
				</center>
			</div>
		</div>
	</footer>
	
  <script>
	// slideshow
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</body>
</html> --%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
if(request.getParameter("id")!=null)
{
	   Connection con=DB.getConnection();
	   String id=request.getParameter("id");
	   PreparedStatement ps;
	   ps=con.prepareStatement("delete from contact where contactus_id="+id+";");
	   ps.executeUpdate();
}
%>
<!DOCTYPE html>
<html>
    <head>
        <title>About us</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">  
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="contact_us.css">
       
      </head>  
    <body>
         <div class="header">
             <h1>PAN-OTING</h1>
                <h3>Voting made easy.</h3>
         </div>
      
        <div class=logo>
            <img src="C:\Users\NITHTHAYA\Desktop\voting system\images\logo.jpg" alt="logo" style="width:120px;height:120px;">    
        </div> 

         <div class=user>
           <img src="C:\Users\NITHTHAYA\Desktop\voting system\images\user.png" alt="user" style="width:110px;height:110px;"> 
            <p>user name</p>
         </div>

         <ul class="nav"> 
     
            <li class="active"><i class="fa fa-home"></i></li>
            <li class="bar"><a href="#events">EVENTS</a></li>
            <li><a href="#contact us">CONTACT US</a></li>
            <li><a href="#about us">ABOUT US</a></li>
            <li><a href="#feedback">FEEDBACK</a></li>
          </ul>

          
       <form action="DeleteUserServlet" method="POST" id="form">
           <table>
           <tr>
           <td>Message ID</td>
           <td>Full Name</td>
           <td>Phone Number</td>
           <td>User Email</td>
            <td>Message</td>
           </tr>
           <%
           Connection con=DB.getConnection();
           String sql="select * from contact ;";
           PreparedStatement pst;
           pst=con.prepareStatement(sql);
           ResultSet rst=pst.executeQuery();
           
           while(rst.next())
           {
        	   String id=rst.getString("contactus_id");
        	   String name=rst.getString("name");
        	   String tp=rst.getString("tp");
        	   String msg=rst.getString("msg");
        	   String email=rst.getString("email");
           %>

            <tr>
           <td ><%= id %></td>
           <td><%= name %></td>
           <td><%= tp %></td>
             <td><%= email %></td>
           <td><%= msg %></td>
           <td><a href="view_contact_us.jsp?id=<%= id%>">Delete</a></td>
           <td><a href="updatecontactus.jsp?idu=<%= id%>&n=<%= name%>&tp=<%= tp%>&email=<%= email%>&msg=<%= msg%>">Update</a></td>
           </tr>
           <%
           }
           
           %>
           </table>
          </form >
          
       
      
          <div class="footer">
            <p>PAN-OTING<p>
                <hr>
                <br>
                <a class="t" href="terms and conditions">Terms and Conditions</a>
                <a class="p" href="Privacy policy">Privacy policy</a>
                <a class="c" href="Cookies Settings">Cookies Settings</a>
                <a class="u" href="contact Us">Contact Us</a>
                <a class="h" href="Help">Help</a>

                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-instagram"></a>
                <a href="#" class="fa fa-google"></a>
                <br><br><br>
                <h4 style="font-size: 12px;">&copy 2021 PAN-OTING. All right reserved </h4>
        </div>



