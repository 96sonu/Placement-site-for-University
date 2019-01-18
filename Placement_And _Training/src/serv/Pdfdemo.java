package serv;

import com.itextpdf.text.Element;
import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Element;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.*;
import java.util.logging.Level;
import java.util.logging.Logger;
//import javafx.scene.control.Cell;
//import javafx.scene.text.Text;
//import javax.persistence.Table;
import javax.swing.text.StyleConstants.FontConstants;

public class Pdfdemo {

    public static void main(String[] args) throws DocumentException, FileNotFoundException {
        Document document = new Document();
        PdfWriter.getInstance(document, new FileOutputStream("abo17pl.pdf"));
        document.open();

        try {
            //adding a local image and aligned RIGHT
            Image image = Image.getInstance("D:\\placement and training\\WebApplication1\\web\\uvpcelogo.png");
            image.setAlignment(Image.RIGHT);
            // image.setAbsolutePosition(70f, 770f);
            image.scaleAbsolute(150f, 70f);

            document.add(image);

            
            
        } catch (BadElementException ex) {
            Logger.getLogger(Pdfdemo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Pdfdemo.class.getName()).log(Level.SEVERE, null, ex);
        }

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

        document.add(new Paragraph("To,", f1));
        document.add(new Paragraph("The Manager-Hr,", f1));
        document.add(new Paragraph("Infibimium,", f1));
        document.add(new Paragraph("Subject: Request for training to final year Engg. Student", f));
        
        Paragraph paragraph1 = new Paragraph("U V Patel College of Engineering is a self financed Degree"
                + " Engineering College recognized by AICTE and affiliated to North Gujarat University."
                + " Since 2005, it has become constituent College of recently formed GANPAT University."
                + " It is located on a picturesque 300-acre land, 12 Kms. Away from Mehsana on the "
                + "Mehsana  -Gozaria highway. The admission to the College is through Central Admission"
                + " Committee, Gujarat. The College offers Degree courses in seven disciplines "
                + "–Information technology, Computer Engineering, Electronics & Communication, "
                + "Mechatronics, Mechanical, Civil and Bio – Medical. The total strength of students is "
                + "almost 1500.", f3);

        Paragraph paragraph2 = new Paragraph("As a part of final year curriculum, students of Computer"
                + " engineering and Information technology have to undergo the full time industrial "
                + "training. We would be pleased if some of our students can do their training/project"
                + " work at your esteemed organization for Training. Training Duration would be 14 to 16"
                + "weeks from date of joining.", f3);
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

        PdfPCell cell1 = new PdfPCell(new Paragraph("No.",f));
        cell1.setBorderColor(BaseColor.BLACK);
        cell1.setPaddingLeft(10);
        //        cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
//        cell1.setVerticalAlignment(Element.ALIGN_MIDDLE);

        PdfPCell cell2 = new PdfPCell(new Paragraph("Student Name", f));
        cell2.setBorderColor(BaseColor.BLACK);
        cell2.setPaddingLeft(10);

        PdfPCell cell3 = new PdfPCell(new Paragraph("Branch", f));
        cell3.setBorderColor(BaseColor.BLACK);
        cell3.setPaddingLeft(10);

        PdfPCell cell4 = new PdfPCell(new Paragraph("1", f));
        cell3.setBorderColor(BaseColor.BLACK);
        cell3.setPaddingLeft(10);

        PdfPCell cell5 = new PdfPCell(new Paragraph("Adesh Patel", f));
        cell3.setBorderColor(BaseColor.BLACK);
        cell3.setPaddingLeft(10);

        PdfPCell cell6 = new PdfPCell(new Paragraph("Computer Engineering", f));
        cell3.setBorderColor(BaseColor.BLACK);
        cell3.setPaddingLeft(10);
        table.setSpacingBefore(10f);
        table.addCell(cell1);
        table.addCell(cell2);
        table.addCell(cell3);
        table.addCell(cell4);
        table.addCell(cell5);
        table.addCell(cell6);

//PdfPTable table = new PdfPTable(3);     
//
//      //Adding cells to the table 
//      
//     table.addCell();
//     
        document.add(table);

        Paragraph paragraph3 = new Paragraph("Wishing your favorable co-operation. ", f1);
        Paragraph paragraph4 = new Paragraph("Thanking you,", f1);
        Paragraph paragraph5 = new Paragraph("Yours Truly,", f1);
        // paragraph3.setAlignment(Element.ALIGN_CENTER);
        paragraph3.setSpacingBefore(10f);
        document.add(paragraph3);
        document.add(paragraph4);
        document.add(paragraph5);

        Paragraph paragraph6 = new Paragraph("Prof. Beena M. Patel\n"
                + "(Training Placement Committee CE/IT)\n"
                + "U. V. Patel College of Engineering,\n"
                + "Ganpat University,Kherva - 382711\n"
                + "Mehsana-Gozaria Highway, Gujarat	", f);
        paragraph6.setSpacingBefore(10f);
        document.add(paragraph6);

        
        Paragraph paragraph7 = new Paragraph("Ganpat University, Ganpat Vidhyanagar-384012, Mehasana Gozaria Highway,District:Mehsana,Gujarat,INDIA"
        +"Phone: +91-2762-286805,Fax: +91-276228665,Toll free N0: 1800 233 12345"
        +"Email:admin.uvpce@ganpat.ac.in Websites: www.uvpce.ac.in",f4);
        
        
         paragraph7.setSpacingBefore(17f);
        document.add(paragraph7);
        
        document.close();

    }
}
