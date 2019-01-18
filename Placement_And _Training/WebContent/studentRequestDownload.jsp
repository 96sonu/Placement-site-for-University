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
    <li><a class="active" href="studentRequestLetter.jsp">RequestLetter</a></li>
    <li><a class="active" href="studentAcad_Achive.jsp">ResumeLetter</a></li>
	<li style="float:right"><a class="active" href="login.jsp">Logout</a></li>
	<li style="float:right"><a class="active" href="#"><%=session.getAttribute("Name")%></a></li>
</ul>

<div style="background-image:url('Images/campus.jpg');background-repeat: no-repeat;  ">
</div>

<%

	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String ProductDetails="";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_and_training","root","root");
		
				
		ps = con.prepareStatement("select s.int_enno,s.str_branch,r.str_companyname,r.str_url,r.str_hrname,r.str_address,r.str_contactno,r.int_requestid from tbl_request_letter r inner join tbl_studdet s on r.str_enno = s.int_enno where r.str_flag = 'Allow' AND s.int_enno="+session.getAttribute("enno"));
		rs = ps.executeQuery();
		System.out.print(rs.getString(7));
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>

<div class="bgimg" style="height:100%;background-image: url('Images/campus.jpg');background-repeat: no-repeat;background-size: cover;">
	<div class="padding">
		<div class="loginform">  
			<table id="customers">
				<tr>
					<th>Company</th>
					<th>Enrollment No</th>
					<th>Action</th>
				</tr>
				<%while(rs.next()) {%>
				<tr>
				  	<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(1) %></td>
			  		<td>
			  			<button type="submit" class="active" ><a href="DownloadRequestLetter?Name=<%=session.getAttribute("Name")%>&enno=<%=session.getAttribute("enno")%>&company=<%=rs.getString(3)%>&url=<%=rs.getString(4)%>&hrname=<%=rs.getString(5)%>&address=<%=rs.getString(6)%>&contact=<%=rs.getString(7)%>&branch=<%=rs.getString(2)%>">Personal Detail</a></button>
			  		</td>
				</tr>
				<%}%>
			</table>
	    </div>             
	</div>
</div>
	
    <script type="text/javascript">function add_chatinline(){var hccid=23439414;var nt=document.createElement("script");nt.async=true;nt.src="https://mylivechat.com/chatinline.aspx?hccid="+hccid;var ct=document.getElementsByTagName("script")[0];ct.parentNode.insertBefore(nt,ct);}
add_chatinline(); </script>
 
   
    </body>
</html>
