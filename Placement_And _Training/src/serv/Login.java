/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
    	
    	System.out.println("1");
    	
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            String enno = request.getParameter("enno");
            String psd = request.getParameter("psw");
            
            Class.forName("com.mysql.jdbc.Driver");
           
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement_and_training","root","root");
            String sql="select str_firstname,str_type,str_branch from tbl_studdet where int_enno=? and str_password=?";
            PreparedStatement pst=cn.prepareStatement(sql);
            pst.setString(1,enno);
            pst.setString(2, psd);
            ResultSet rs=pst.executeQuery();
            if (!rs.next()) 
            {
            	System.out.println("2");
                out.println("<p align='center'>Account Doesn't exits or Password Incorrect</p>");
                RequestDispatcher rdf = request.getRequestDispatcher("login.jsp");
                rdf.include(request, response); 
            }
            else
            {
            	System.out.println("3");
            	
            	if(rs.getString(2).equals("student"))
            	{
            		System.out.println("4");
            		HttpSession session= request.getSession();
                	session.setAttribute("enno", enno);
                	session.setAttribute("Name", rs.getString(1));
                	session.setAttribute("Branch", rs.getString(3));
                	
                	System.out.print("Name: "+rs.getString(1));
                	
                	response.sendRedirect("studentHomePage.jsp");
            	}
            	else
            	{
            		System.out.println("5");
            		HttpSession session= request.getSession();
            		session.setAttribute("enno", enno);
            		session.setAttribute("Name", rs.getString(1));
            		response.sendRedirect("adminHomePage.jsp");
            	}
            	
            }
        }
        catch(Exception e)
        {
        	
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

}
