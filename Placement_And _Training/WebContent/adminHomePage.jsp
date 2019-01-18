<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("slow");
    });
});
</script>
<script> 
$(document).ready(function(){
    $("#flip1").click(function(){
        $("#panel1").slideToggle("slow");
    });
});
</script>
<script> 
$(document).ready(function(){
    $("#flip2").click(function(){
        $("#panel2").slideToggle("slow");
    });
});
</script>
<script> 
$(document).ready(function(){
    $("#flip3").click(function(){
        $("#panel3").slideToggle("slow");
    });
});
</script>
<style> 
#panel, #flip {
    padding: 5px;
    text-align: left;
    background-color: #ffe13f;
    border: solid 0px #c3c3c3;
  
}

#panel {
    padding: 50px;
    display: none;
}

</style>
<style> 
#panel1, #flip1 {
    padding: 5px;
    text-align: left;
    background-color: #ffe13f;
    border: solid 0px #ffd907;
  
}

#panel1 {
    padding: 50px;
    display: none;
}

</style>
<style> 
#panel2, #flip2 {
    padding: 5px;
    text-align: left;
    background-color: #ffe13f;
    border: solid 0px #ffd907;
  
}

#panel2 {
    padding: 50px;
    display: none;
}

</style>

<style> 
#panel3, #flip3 {
    padding: 5px;
    text-align: left;
    background-color: #ffe13f;
    border: solid 0px #c3c3c3;
  
}

#panel3 {
    padding: 50px;
    display: none;
}

</style>
    </head>
    <body>
        <img src="Images/uvpcelogo.png" alt="HTML5 Icon" align="right" style="width:240px;height:100px;" >
 
     <div style="background:gray;border:1px solid #cccccc;padding: 11px;" contextmenu="mymenu">

         <h1 style="color: white">Placement And Training Module</h1>
        </div>
        
<ul>
	<li><a class="active" href="adminHomePage.jsp">Home</a></li>
    <li><a class="active" href="adminNotificationPage.jsp">Notification</a></li>
    <li><a class="active" href="adminSearchPage.jsp">Search</a></li>
    <li><a class="active" href="adminRequestReply.jsp">RequestLetter</a></li>
</ul>

        <img  src="Images/campus.jpg"  style="width: 100%"  >
        
    </body>
</html>
