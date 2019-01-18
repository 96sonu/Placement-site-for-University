package serv;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class PdfGenerate
 */
@WebServlet("/StudentRequestLetter")
public class StudentRequestLetter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRequestLetter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		HttpSession session = request.getSession();
		
		String Name,enno = "";
		
		if(session.isNew())
		{
			response.sendRedirect("login.jsp");
		}
		else
		{
			Name = String.valueOf(session.getAttribute("Name"));
			enno = String.valueOf(session.getAttribute("enno"));
		}
		
		String toWhom,company,url,address,contact;
		
		try
		{
			toWhom = request.getParameter("toWhom");
			company = request.getParameter("company");
			url = request.getParameter("url");
			address = request.getParameter("address");
			contact = request.getParameter("contact");
			
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");  
		    LocalDateTime now = LocalDateTime.now();  
            System.out.println("Date:"+now.format(dtf)+" "+now);
            
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_and_training","root","root");
            System.out.println("Check point 1");
            String query = "insert into tbl_request_letter(str_companyname,str_url,str_hrname,str_address,str_contactno,str_flag,str_enno,date_createddate) values(?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(query);
            System.out.println("Check point 2");
            ps.setString(1, company);
            ps.setString(2, url);
            ps.setString(3, toWhom);
            ps.setString(4, address);
            ps.setString(5, contact);
            ps.setString(6, "Pending");
            ps.setString(7, enno);
            ps.setString(8, now.format(dtf));
            System.out.println("Check point 3");
            ps.executeUpdate();
            System.out.print("record inserted sucessfully");
	        response.sendRedirect("studentHomePage.jsp");
		}
		catch(Exception e){e.printStackTrace();}
	}
}
