
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
	   ps=con.prepareStatement("delete from users where user_id="+id+";");
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
<%
if(request.getParameter("idu")!=null )
{
	   Connection con=DB.getConnection();
	   String id=request.getParameter("idu");
	   String n=request.getParameter("n");
	   String tp=request.getParameter("tp");
	   String email=request.getParameter("email");
	   String msg=request.getParameter("msg");
	   
	 
	   
%>
          <form action="UpdateContactServlet" method="POST">
          <table>
          <tr><td>User ID</td><td><input type="text" name="id" value="<%=id %>" readonly="readonly"></td></tr>
          <tr><td>First Name</td><td><input type="text" value="<%=n %>"  name="n" ></td></tr>
             <tr><td>Last Name</td><td><input type="text" value="<%=tp %>" name="tp" ></td></tr>
                <tr><td>Email</td><td><input type="text" value="<%=email %>" name="em" ></td></tr>
                 <tr><td>Message</td><td><input type="text" value="<%=msg %>" name="msg" ></td></tr>
                
          </table>
          <input type="submit" value="Update">
          </form >
         <%} %>
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








