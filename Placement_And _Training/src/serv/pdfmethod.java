package serv;
import com.itextpdf.text.BadElementException;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class pdfmethod {
    
    void pdfmethod1() throws DocumentException, FileNotFoundException
    {
          Document document=new Document();
          PdfWriter.getInstance(document, new FileOutputStream("yiou.pdf"));
           document.open();
           Image img = null;
        try {
            img = Image.getInstance("uvpcelogo.png");
        } catch (BadElementException ex) {
            Logger.getLogger(pdfmethod.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(pdfmethod.class.getName()).log(Level.SEVERE, null, ex);
        }
img.setAbsolutePosition(455f, 755f);
//Scale to new height and new width of image
img.scaleAbsolute(90, 90);
         Font f = new Font();
            f.setStyle(Font.BOLD);
            f.setStyle(Font.UNDERLINE);
            f.setSize(30);
              Font f1 = new Font();
            f1.setStyle(Font.NORMAL);
            f1.setSize(20);
           // f.setAlignment(Element.ALIGN_CENTER);
           //p.add("RequestLetter");
        document.add(new Paragraph("Request Letter", f));
        document.add(new Paragraph("To Whome:ioiuu",f1));
        document.add(new Paragraph("Company Name: rtty",f1));
        document.add(new Paragraph("Website Url: jkgk.com",f1));
        document.add(new Paragraph("address: dgfhgjgjh",f1));
        document.add(new Paragraph("contact no: 952863212",f1));
        document.close();
        
    }
    
}
