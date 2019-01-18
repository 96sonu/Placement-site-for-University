<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
		<script   src="https://code.jquery.com/jquery-2.2.3.min.js"   integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo="   crossorigin="anonymous"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.0/js/bootstrap-datepicker.min.js"></script>
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/css/bootstrap-datepicker3.min.css">
		<script>
		$( document ).ready(function() {
		    $("#from-datepicker").datepicker({ 
		        format: 'yyyy-mm-dd'
		    });
		    $("#from-datepicker").on("change", function () {
		        var fromdate = $(this).val();
		        alert(fromdate);
		    });
		}); 
		</script>    
    
    
    
    
    <style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>

    
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
    .mySlides {display:none;}
    
.img {
    height: 50%;
    width: 100%;
}
</style>




    <body>
    
     
 
     <div style="background:gray;border:1px solid #cccccc;padding: 11px;" contextmenu="mymenu">
		<img src="Images/uvpcelogo.png" alt="HTML5 Icon" align="right" style="width:240px;height:100px;" >	
         <h1 style="color: white">Placement And Training Module</h1>
        </div>
        
<ul>
	<li><a class="active" href="start.html">Home</a></li>
    <li><a class="active" href="registration.jsp">Registration</a></li>
    <li><a class="active" href="login.jsp">Login</a></li>
    <li><a class="active" href="company.html">Placement Partner</a></li>
</ul>
    
    
    
        <form action="Registration" method="get" style="border:1px solid #ccc">  
            
            <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

<label for="email"><b>Branch</b></label>
<br/>
<br/>

    <input type="radio" name="branch" value="Computer Engineering">Computer Engineering
    <input type="radio" name="branch" value="Information Technology">Information Technology
<br/>
<br/>
    <label for="email"><b>Enrollment No</b></label>
    <input type="text" placeholder="Enter Your Enrollment No" name="enno" required>
    
    <label for="email"><b>First Name</b></label>
    <input type="text" placeholder="Enter Your Firstname For Ex. Your Name" name="firstname" required>
    
    <label for="email"><b>Middle Name</b></label>
    <input type="text" placeholder="Enter Your Middlename For Ex. Father's Name" name="middlename" required>
    
    <label for="email"><b>Last Name </b></label>
    <input type="text" placeholder="Enter Your Lastname For Ex. Surname" name="lastname" required>

<label for="email"><b>Contact No. </b></label>
    <input type="text" placeholder="Ex. +91 8563214569" name="contact" required>

<label for="email"><b>Birthdate</b></label>
	<input type="text" name="birthdate" id="from-datepicker"/ required>
<!--     <input type="text" placeholder="Ex.11/9/1997" name="birthdate" required> -->

    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>
    
    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>

    <label for="psw"><b>Confirm Password</b></label>
    <input type="password" placeholder="Reenter Password" name="cpsw" required>
    
  <div class="clearfix">
      
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>  
        </form>  
    </body>
</html>
