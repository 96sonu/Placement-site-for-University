<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html>
<html style="width: 100%;height: 100%;">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JSP Page</title>
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
.bgimg {
    
}
</style>
<style type="text/css">
    a:link{
        color: white;

    }
    p{
        color: white;
        font-family:serif;
        font-size:140%;
    }

</style>
</head>
    
    <body style="height:100%">
    <img src="Images/uvpcelogo.png" alt="HTML5 Icon" align="right" style="width:240px;height:100px;" >
 
     <div style="background:gray;border:1px solid #cccccc;padding: 11px;" contextmenu="mymenu">

         <h1 style="color: white">Placement And Training Module</h1>
     </div>

<ul>
	<li><a class="active" href="studentHomePage.jsp">Home</a></li>
    <li><a class="active" href="studentRequestLetter.jsp">Requsetletter</a></li>
    <li><a class="active" href="studentRequestDownload.jsp">Application</a></li>
	<li><a class="active" href="application.jsp">ResumeLetter</a></li>
	<li style="float:right"><a class="active" href="#">Logout</a></li>
	<li style="float:right"><a class="active" href="#"><%=session.getAttribute("Name")%></a></li>
</ul>

<div style="background-image:url('Images/campus.jpg');background-repeat: no-repeat;  ">
</div>

<div class="bgimg" style="height:100%;background-image: url('Images/campus.jpg');background-repeat: no-repeat;background-size: cover;">
<div class="padding">
    <div class="loginform">  
        <p><a href="DownloadRequestLetter">Personal Detail</a>
		<p><a href="history.jsp">Academic History</a>
		<p><a href="achievement.jsp">Academic Achievements</a></p>
    </div>             
</div>
</div>
	
    <script type="text/javascript">function add_chatinline(){var hccid=23439414;var nt=document.createElement("script");nt.async=true;nt.src="https://mylivechat.com/chatinline.aspx?hccid="+hccid;var ct=document.getElementsByTagName("script")[0];ct.parentNode.insertBefore(nt,ct);}
add_chatinline(); </script>
 
   
    </body>
</html>
