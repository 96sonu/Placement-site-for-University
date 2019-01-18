package serv;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.List;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * Servlet implementation class ResumeGenerate
 */
@WebServlet("/ResumeGenerate")
public class ResumeGenerate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResumeGenerate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
				 		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String SSC,HSC,CGPA,Project1,Project2,Project3,Event,Certificate,Workshop,Skill,Name,enno;
		
		try
		
		{
	        HttpSession session = request.getSession();
	        
	        SSC = request.getParameter("schoolpercentage");
	        HSC = request.getParameter("diploma");
	        CGPA = request.getParameter("degree");
	        Project1 = request.getParameter("project1");
	        Project2 = request.getParameter("project2");
	        Project3 = request.getParameter("project3");
	        Event = request.getParameter("event");
	        Certificate = request.getParameter("certificate");
	        Workshop = request.getParameter("workshop");
	        Skill = request.getParameter("presentation");
	        Name = String.valueOf(session.getAttribute("Name"));
	        enno = String.valueOf(session.getAttribute("enno"));
	        
	        System.out.println("Name: "+Name);
	        System.out.println("Enno: "+enno);
	        
	        
			Document document = new Document();
	        ByteArrayOutputStream baosPDF = new ByteArrayOutputStream();
			PdfWriter docWriter = PdfWriter.getInstance(document, baosPDF);
	        PdfWriter.getInstance(document, new FileOutputStream("resume.pdf"));
	        document.open();
	        document.open();

	        Font f = new Font();
	        f.setStyle(Font.BOLD);
	        // f.setStyle(Font.UNDERLINE);
	        f.setSize(14);

	        Font f1 = new Font();
	        f1.setStyle(Font.NORMAL);
	        f1.setSize(14);

	        Font f3 = new Font();
	        f3.setStyle(Font.NORMAL);
	        f3.setSize(14);
	        
	        Font f4 = new Font();
	        f4.setStyle(Font.NORMAL);
	        f4.setSize(9);


	        
	        
	        document.add(new Paragraph(Name, f));
	        document.add(new Paragraph("B.Tech Computer Engineering", f1));
	        document.add(new Paragraph("9586306026", f1));
	        document.add(new Paragraph("adeshpansuriya97@gmail.com", f1));
	        document.add(new Paragraph("Career Objective", f));
	        Paragraph paragraph1 = new Paragraph("To work in a firm with a professional work driven"
	                + " environment where I can utilize and apply my knowledge, skills which would "
	                + "enable me as a fresh graduate to grow while fulfilling organizational goals.", f3);

	        Paragraph paragraph2 = new Paragraph("Academic Credentials", f);
	        paragraph1.setSpacingBefore(10f);
	        paragraph2.setSpacingBefore(10f);
	        document.add(paragraph1);
	        document.add(paragraph2);
	        
	        PdfPTable table = new PdfPTable(3); // 3 columns.
	        table.setWidthPercentage(100); //Width 100%
	        table.setSpacingBefore(10f); //Space before table
	        table.setSpacingAfter(10f); //Space after table

	        float[] columnWidths = {1f, 1f, 1f};
	        table.setWidths(columnWidths);

	        PdfPCell cell1 = new PdfPCell(new Paragraph("Qualification",f));
	        cell1.setBorderColor(BaseColor.BLACK);
	        cell1.setPaddingLeft(10);
	        //        cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
//	        cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);

	        PdfPCell cell2 = new PdfPCell(new Paragraph("Year", f));
	        cell2.setBorderColor(BaseColor.BLACK);
	        cell2.setPaddingLeft(10);

	        PdfPCell cell3 = new PdfPCell(new Paragraph("Percentage/CGPA", f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);

	        PdfPCell cell4 = new PdfPCell(new Paragraph("SSC", f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);

	        PdfPCell cell5 = new PdfPCell(new Paragraph("2012", f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);

	        PdfPCell cell6 = new PdfPCell(new Paragraph(SSC, f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);
	        
	        PdfPCell cell7 = new PdfPCell(new Paragraph("HSC", f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);
	        
	        PdfPCell cell8 = new PdfPCell(new Paragraph("2014", f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);
	        
	        PdfPCell cell9 = new PdfPCell(new Paragraph(HSC, f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);
	        
	        PdfPCell cell10 = new PdfPCell(new Paragraph("B.Tech", f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);
	        
	        PdfPCell cell11 = new PdfPCell(new Paragraph("2018", f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);
	        
	        PdfPCell cell12 = new PdfPCell(new Paragraph(CGPA, f));
	        cell3.setBorderColor(BaseColor.BLACK);
	        cell3.setPaddingLeft(10);
	        
	        table.setSpacingBefore(10f);
	        table.addCell(cell1);
	        table.addCell(cell2);
	        table.addCell(cell3);
	        table.addCell(cell4);
	        table.addCell(cell5);
	        table.addCell(cell6);
	        table.addCell(cell7);
	        table.addCell(cell8);
	        table.addCell(cell9);
	        table.addCell(cell10);
	        table.addCell(cell11);
	        table.addCell(cell12);
	        
	//PdfPTable table = new PdfPTable(3);     
	//
//	      //Adding cells to the table 
//	      
//	     table.addCell();
//	     
	        document.add(table);

	        
	       
	        Paragraph paragraph3 = new Paragraph("Project Detail ", f);
	        paragraph3.setSpacingBefore(10f);
	        document.add(paragraph3);
	        List list = new List(); 
	         list.add(Project1);       
	      list.add(Project2);   
	      list.add(Project3);
	      document.add(list);
	        Paragraph paragraph4 = new Paragraph("Workshop", f);
	        document.add(paragraph4);
	         List list1 = new List(); 
	        list1.add(Workshop);
	        document.add(list1);
	        
	        Paragraph paragraph5 = new Paragraph("Extra Curriculam activities", f);
	        document.add(paragraph5);
	        List list2 = new List();
	        list2.add(Certificate);
	        document.add(list);

	        Paragraph paragraph6 = new Paragraph("Skills", f);
	      
	        paragraph6.setSpacingBefore(10f);
	        document.add(paragraph6);
  
	        Paragraph paragraph7 = new Paragraph(Skill,f1);
	         
	        document.add(paragraph7);
	        
	        document.close();
	        
	        response.setHeader("Expires", "0");
	        response.setHeader("Cache-Control","must-revalidate,post-check=0,pre-check=0");
	        response.setHeader("Pragma","public");
	       
	        response.setContentType("application/pdf");
	        response.addHeader("Content-Disposition", "attachment; filename=abo17pl.pdf");
	        OutputStream os = response.getOutputStream();
	        baosPDF.writeTo(os);
	        os.flush();
	        baosPDF.close();
	        os.close();

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
		
	}

}
