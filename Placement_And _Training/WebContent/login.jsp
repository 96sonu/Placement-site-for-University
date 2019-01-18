
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

<style type="text/css">
          input:focus{background-color:activecaption}
          .loginform{  
              padding:10px;  
              border:1px solid black;  
              border-radius:10px;  
              float:right;  
              margin-top:10px;  
          }  
          td{ font-family:serif;
font-size:larger;
              color: white;
              
}
          .formheading{  
              background-color:black;  
              color:white;  
              padding:4px;  
              text-align:center;  
          }  
          .sub{    
              padding: 7px 40px 7px 40px;  
              color:black;  
              font-weight:bold;  
              margin-left:70px;  
              border-radius:5px;  
          }  
          
          table{
                  padding-top: 1%;
                  border-color: black; 
                  background-color:darkcyan;
                  padding-left:auto; 
                  border-spacing: 12px;
              }
              .padding{padding-right: 220px;
              padding-top: 25px;}
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

.bgimg {
    background-image: url('Images/campus.jpg');
    background-repeat: no-repeat;
    background-size: cover;
}

</style>

    </head>
    
    <body>
        <img src="Images/uvpcelogo.png" alt="HTML5 Icon" align="right" style="width:240px;height:100px;" >
 
     <div style="background:gray;border:1px solid #cccccc;padding: 11px;" contextmenu="mymenu">

         <h1 style="color: white">Placement And Training Module</h1>
      </div>
        
<ul>
	<li><a class="active" href="start.html">Home</a></li>
    <li><a class="active" href="registration.jsp">Registration</a></li>
    <li><a class="active" href="login.jsp">Login</a></li>
    <li><a class="active" href="company.html">Placement Partner</a></li>
</ul>


<div class="bgimg" style="height:100%">
<div class="padding">
    <div class="loginform">  
        <h3 class="formheading">Please Login</h3>  
        <form action="Login" method="post">  
            <table>  
                <tr><td align="right"> Enrollment No.:</td><td><input type="text" name="enno" required/></td></tr>  
                <tr><td align="right">Password:</td><td><input type="password" name="psw" required/></td></tr>  
                <tr><td style="text-align:center"><input class="sub" type="submit" value="login"/><td style="text-align:center;"></tr>  
            </table>  
        </form>  
    </div>             
</div>
</div>
        
        
    </body>
</html>
