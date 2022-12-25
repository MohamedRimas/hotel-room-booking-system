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
 <div class="cntc">
        <div class="contact-wrap">
            <div class="contact-in">
                <h2>Contact Info</h2>
                <h4><i class="fa fa-phone" aria-hidden="true"></i>Phone</h4>
                <p>077-7745638</p>
                <h4><i class="fa fa-envelope" aria-hidden="true"></i>E-mail</h4>
                <p>panoting@gmail.com</p>
                <h4><i class="fa fa-map-marker" aria-hidden="true"></i>Address</h4>
                <p>NO:120, Steam Rd, Colombo 4, Sri Lanka </p>
              
            </div>

            <div class="contact-in">
                <h2>Send a Message</h2>
                <form class="form-contact" method="post"  action="ContactusServlet">
                    <input type="text" placeholder="Full Name" name="contact1" class="contact-in-input">
                    <input type="text" placeholder="E-mail" name="contact2" class="contact-in-input">
                    <input type="text" placeholder="Phone Number" name="contact3" class="contact-in-input">
                    <textarea placeholder="Message" class="contact-in-textarea" name="contact4"></textarea>
                    <input type="submit" placeholder="SUBMIT" class="contact-in-btn">
                </form>
                     <%
                  String err=(String)request.getAttribute("err");
                 %>
                 <%if(err==null){ %>
                 <%}else if(err.equals("Successfull")){ %>
                 <div class="besideemailbox" style="color: green"><%= err %></div>
                 <%}else{ %>
                 <div class="besideemailbox" style="color: red">Error</div>
                 <%} %>
            </div>
        <div class="contact-in">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15844.089481813433!2d79.84902686706728!3d6.887923673296452!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae25bdb2b0473d7%3A0x25dd59a03ad76bb4!2sColombo%2004%2C%20Colombo!5e0!3m2!1sen!2slk!4v1642178811397!5m2!1sen!2slk" width="100%" height="auto" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
        </div>
        </div>
        </div>
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
