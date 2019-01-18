<%-- 
    Document   : personal
    Created on : Feb 19, 2018, 9:16:41 PM
    Author     : Lenocv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
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
    <body>
   <form action="requestletter" method="post" style="border:1px solid #ccc">  
            
            <div class="container">
    <h1>Personal Details</h1>
    <p>Please fill in this form to submit Application.</p>
    <hr>

    <label for="email"><b>Branch</b></label>
    <input type="text"  name="branch" placeholder="Computer Engineering/Information Technology" required>
    
    
    <label for="email"><b>Batch Duration</b></label>
    <input type="text" placeholder="Enter the duration of your batch" name="duration" required>
    
    <label for="email"><b>Address</b></label>
    <input type="text" placeholder="Enter Address " name="address" required>
    
    <label for="email"><b>Contact No:</b></label>
    <input type="text" placeholder="Enter Contact No" name="url" required>
    
    <label for="email"><b>Date Of Birth </b></label>
    <input type="text" placeholder="Enter Birthdate" name="address" required>

    
  <div class="clearfix">
      
      <button type="submit" class="signupbtn">Submit</button>
    </div>
  </div>  
        </form>  
    
    </body>
</html>
