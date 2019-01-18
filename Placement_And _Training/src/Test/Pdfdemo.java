package Test;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Element;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.*;
public class Pdfdemo {
    
    public static void main(String[] args) throws DocumentException, FileNotFoundException{
        Document document=new Document();
        PdfWriter.getInstance(document, new FileOutputStream("ramo.pdf"));
        document.open();
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
       
        document.add(new Paragraph("To Whome:",f1));
        document.add(new Paragraph("Company Name: rtty",f1));
        document.add(new Paragraph("Website Url: jkgk.com",f1));
        document.add(new Paragraph("address: dgfhgjgjh",f1));
        document.add(new Paragraph("contact no: 952863212",f1));
        document.close();
        
    }
    
}