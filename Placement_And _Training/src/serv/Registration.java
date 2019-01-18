package serv;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Properties;

import java.util.concurrent.ThreadLocalRandom;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Registration() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
	{
		
		String firstname, middlename, lastname, psd, enno, email, branch, contact, birth;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
        response.setContentType("text/html;charset=UTF-8");
        

		HttpSession session = request.getSession();
		
		String OTP = null;
		
		if(session.isNew())
		{
			
		}
		else
		{
			OTP = String.valueOf(session.getAttribute("otp"));
		}
		
		
		System.out.println(OTP);
		
		if(OTP == "null")
		{
			try
	        {
	        	PrintWriter out = response.getWriter();
	        	birth = request.getParameter("birthdate");
	        	contact = request.getParameter("contact");
	        	branch = request.getParameter("branch");
	            enno = request.getParameter("enno");
	            firstname = request.getParameter("firstname");
	            middlename = request.getParameter("middlename");
	            lastname = request.getParameter("lastname");
	            email = request.getParameter("email");
	            psd = request.getParameter("psw");
	            
	            
	            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
	            LocalDateTime now = LocalDateTime.now();  
	            System.out.println("Date:"+dtf.format(now));
	            
	            Class.forName("com.mysql.jdbc.Driver");
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_and_training","root","root");
	            
	            String query = "insert into tbl_studdet(int_enno,str_firstname,str_middlename,str_lastname,date_birthdate,str_email,str_contactno,str_password,date_createdate,str_type,str_branch) values(?,?,?,?,?,?,?,?,?,?,?)";

	            PreparedStatement pst = con.prepareStatement(query);
	            pst.setString(1, enno);
	            pst.setString(2, firstname);
	            pst.setString(3, middlename);
	            pst.setString(4, lastname);
	            pst.setString(5, birth);
	            pst.setString(6, email);
	            pst.setString(7, contact);
	            pst.setString(8, psd);
	            pst.setString(9, dtf.format(now));
	            pst.setString(10, "student");
	            pst.setString(11, branch);
	            pst.executeUpdate();
	            System.out.print("record inserted sucessfully");
	            
	    		final String from = "doshi.paril2015@gmail.com";
	    		final String password = "pwwbowbidkolgdma";

	    		Properties props = new Properties();
	    		props.put("mail.smtp.host", "smtp.gmail.com");
	    		props.put("mail.smtp.socketFactory.port", "465");
	    		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
	    		props.put("mail.smtp.auth", "true");
	    		props.put("mail.smtp.port", "465");

	    		Session session1 = Session.getDefaultInstance(props,
	    				new javax.mail.Authenticator() 
	    		{
	    			protected PasswordAuthentication getPasswordAuthentication() 
	    			{
	    				return new PasswordAuthentication(from,password);
	    			}
	    		});
	    		
	    		
	    			//String msg = "<h4>Hi User</h4><br>";
	    			//msg+="your otp number for reset password is:<b>9409406975</b>";
	    		
	    			int randomNum = ThreadLocalRandom.current().nextInt(0000, 9998 + 1);

	    			Message message = new MimeMessage(session1);
	    			message.setFrom(new InternetAddress(from));
	    			String receiverEmailId = email;
	    			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(receiverEmailId ));
	    			message.setSubject("Reset password");
	    			message.setContent("Test","text/html");
	    			message.setText("Hi User"+"\n \n your otp number for reset password is: "+randomNum);
	    			
	    			
					session.setAttribute("otp", randomNum);

					
	    			Transport.send(message);
	    			//response.sendRedirect("otpverification.jsp");
	    			out.println("<form action='#' method='get'>"
	    					+ " OTP is mailed at the specified email address:<br>"
	    					+ "<input type='text' name='otp' value=''>"
	    					+ "<input type='submit' value='Submit'>"
	    					+ "</form>"
	    					);
	   
	            
	        }
	    		catch(Exception e){e.printStackTrace();}

		}
		else
		{
			String Emailed_OTP;
			Emailed_OTP = request.getParameter("otp");
			
			System.out.println("OTP"+OTP+"EmailedOTP"+Emailed_OTP);
			
			if(OTP.equals(Emailed_OTP))
			{
				System.out.println("OTP"+OTP+"EmailedOTP"+Emailed_OTP);
				try {
					response.sendRedirect("login.jsp");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else
			{
				PrintWriter out;
				try {
					out = response.getWriter();
					out.println("OTP incorrect");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
			
		}

        
	}
}