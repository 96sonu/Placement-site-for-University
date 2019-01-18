<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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


 <img src="Images/uvpcelogo.png" alt="HTML5 Icon" align="right" style="width:240px;height:100px;" >
 
     <div style="background:gray;border:1px solid #cccccc;padding: 11px;" contextmenu="mymenu">

         <h1 style="color: white">Placement And Training Module</h1>
        </div>

<ul>
	<li><a class="active" href="studentHomePage.jsp">Home</a></li>
    <li><a class="active" href="studentAcad_Achive.jsp">ResumeLetter</a></li>
	<li><a class="active" href="studentRequestDownload.jsp">RequestDownload</a></li>
	<li style="float:right"><a class="active" href="login.jsp">Logout</a></li>
	<li style="float:right"><a class="active" href="#"><%=session.getAttribute("Name")%></a></li>
</ul>
    



	<form action="StudentRequestLetter" method="post" style="border:1px solid #ccc">  
            
    <div class="container">
	    <h1>Request Letter:</h1>
	    <p>Please fill in this form to create Request Letter.</p>
	    <hr>
	
	    <label for="email"><b>To Whom:</b></label>
	    <input type="text" placeholder="Enter Name of the contact Person:" name="toWhom" required>
	    
	    <label for="email"><b>Company Name</b></label>
	    <input type="text" placeholder="Enter Company Name " name="company" required>
	    
	    <label for="email"><b>Website URL</b></label>
	    <input type="text" placeholder="Enter URL" name="url" required>
	    
	    <label for="email"><b>Address </b></label>
	    <input type="text" placeholder="Enter Address" name="address" required>
	
	    <label for="email"><b>Contact No:</b></label>
	    <input type="text" placeholder="Enter Contact No" name="contact" required>
	    
	  	<div class="clearfix">  
	      <button type="submit" class="signupbtn">Send Request</button>
	    </div>
	  </div>  
	</form>

<script type="text/javascript">function add_chatinline(){var hccid=23439414;var nt=document.createElement("script");nt.async=true;nt.src="https://mylivechat.com/chatinline.aspx?hccid="+hccid;var ct=document.getElementsByTagName("script")[0];ct.parentNode.insertBefore(nt,ct);}
add_chatinline(); </script>
        

</body>
</html>