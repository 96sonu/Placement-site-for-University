<%-- 
    Document   : achievement
    Created on : Feb 19, 2018, 9:58:02 PM
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
    <li><a class="active" href="studentRequestLetter.jsp">RequestLetter</a></li>
	<li><a class="active" href="studentRequestDownload.jsp">RequestDownload</a></li>
	<li style="float:right"><a class="active" href="login.jsp">Logout</a></li>
	<li style="float:right"><a class="active" href="#"><%=session.getAttribute("Name")%></a></li>
</ul>
        

    
    
   <form action="ResumeGenerate" method="post" style="border:1px solid #ccc">  
            
            <div class="container">
    <h1>Projects And Achievement</h1>
    <p>Please fill in this form to submit Application.</p>
    <hr>

	<label for="email"><b>10th Percentage</b></label>
    <input type="text"  name="schoolpercentage" placeholder="Enter 10th percentage" required>
   
    <label for="email"><b>12th/Diploma GPA</b></label>
    <input type="text" placeholder="Enter 12th percentage or diploma GPA " name="diploma" required>
    
    <label for="email"><b>CGPA</b></label>
    <input type="text" placeholder="Enter B.Tech CGPA including 6th semester " name="degree" required>

    <label for="email"><b>First Project Detail:</b></label>
    <input type="text"  name="project1" placeholder="Describe title,objective, tools and technology used in project" required>
    
      <label for="email"><b>Second Project Detail:</b></label>
    <input type="text"  name="project2" placeholder="Describe title,objective, tools and technology used in project" required>
    
      <label for="email"><b>Third Project Detail:</b></label>
    <input type="text"  name="project3" placeholder="Describe title,objective, tools and technology used in project" required>
    
    
    <label for="email"><b>Events:</b></label>
    <input type="text"  name="event" placeholder="Describe event in which you participated" required>
   
   
    <label for="email"><b>Certificates:</b></label>
    <input type="text" placeholder="Certificates" name="certificate" required>
    
    <label for="email"><b>Workshops/Seminar</b></label>
    <input type="text" placeholder="Enter workshop you attended " name="workshop" required>

      <label for="email"><b>Presentation</b></label>
    <input type="text" placeholder="Describe objective of your presentation " name="presentation" required>
  <div class="clearfix">
      
      <button type="submit" class="signupbtn">Submit</button>
    </div>
  </div>  
        </form>  

<script type="text/javascript">function add_chatinline(){var hccid=23439414;var nt=document.createElement("script");nt.async=true;nt.src="https://mylivechat.com/chatinline.aspx?hccid="+hccid;var ct=document.getElementsByTagName("script")[0];ct.parentNode.insertBefore(nt,ct);}
add_chatinline(); </script>
        

    </body>
</html>
