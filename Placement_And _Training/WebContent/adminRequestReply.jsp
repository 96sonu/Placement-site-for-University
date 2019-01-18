<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #ffff51;
    color: black;
}
    
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


<%

	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	String ProductDetails="";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_and_training","root","root");
		
		ps = con.prepareStatement("select r.int_requestid,s.int_enno,r.str_companyname,r.int_requestid from tbl_request_letter r inner join tbl_studdet s on r.str_enno = s.int_enno where r.str_flag = 'Pending'");
		rs = ps.executeQuery();
		
		
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
%>

<table id="customers">
  <tr>
    <th>Company</th>
    <th>Enrollment No</th>
    <th>Action</th>
  </tr>
  <%while(rs.next()) {
		%>
		<tr>
    		<td><%=rs.getString(2) %></td>
    		<td><%=rs.getString(3) %></td>
    		<td>
    			<form method="get" action="RequestReply?"><input type='hidden' name='ID' value='<%=rs.getString(1) %>'/><button type="submit" class="active" >Allow</button></form>
 				<form><button type="submit" class="active" >Reject</button></form>
    		</td>
		</tr>
		<%} %>

  
</table>

    <img  src="Images/campus.jpg"  style="width: 100%"  >
</body>
</html>