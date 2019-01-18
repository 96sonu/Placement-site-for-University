package serv;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.log.Logger;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * Servlet implementation class RequestLetter
 */
@WebServlet("/RequestLetter")
public class RequestLetter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestLetter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String towhom, company, url, address, contact;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            /* TODO output your page here. You may use following sample code. */
            towhom = request.getParameter("towhom");
            company = request.getParameter("company");
            url = request.getParameter("url");
            address = request.getParameter("address");
            contact = request.getParameter("contact");
            if ((!towhom.equals(""))) 
            {
            	
            	Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_and_training","root","root");
                
                    String query = "insert into PANDT.REQUESTLETTER values(?,?,?,?,?)";
                    PreparedStatement pst1 = cn.prepareStatement(query);
                    pst1.setString(1, towhom);
                    pst1.setString(2, company);
                    pst1.setString(3, url);
                    pst1.setString(4, address);
                    pst1.setString(5, contact);
                    pst1.executeUpdate();

                    //start
                    Document document = new Document();
                    PdfWriter.getInstance(document, new FileOutputStream("ramo.pdf"));
                    document.open();
                    Font f = new Font();
                    f.setStyle(Font.BOLD);
                    f.setStyle(Font.UNDERLINE);
                    f.setSize(30);
                    Font f1 = new Font();
                    f1.setStyle(Font.NORMAL);
                    f1.setSize(20);
                    document.add(new Paragraph("Request Letter", f));
                    document.add(new Paragraph("To Whome:", f1));
                    document.add(new Paragraph("Company Name:", f1));
                    document.add(new Paragraph("Website Url:", f1));
                    document.add(new Paragraph("address: ", f1));
                    document.add(new Paragraph("contact no:", f1));
                    
                    
                    
                    document.close();
                    out.println("record inserted sucessfully");
                    response.sendRedirect("otp.jsp");
                    out.println("record inserted sucessfully");
                }
        }
            catch (Exception ex) {
                    //Logger.getLogger(RequestLetter.class.getName()).log(Level.SEVERE, null, ex);
                }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		}		
	}

