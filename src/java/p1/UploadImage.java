/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p1;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author my
 */
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB 
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100)

public class UploadImage extends HttpServlet {
    


   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException 
    {
        PrintWriter out = resp.getWriter();
     try {
        
        Part part = request.getPart("img");
        DBConnection obj= new DBConnection();
        ResultSet rs=null;
        Connection con = obj.getConnection();
           HttpSession session= request.getSession();
        if (part != null) {
            
                PreparedStatement pst = con.prepareStatement("update userdata set pic=? where id=?");
                InputStream is = part.getInputStream();       
                pst.setObject(1, is);
                pst.setInt(2,Integer.parseInt(session.getAttribute("user_id").toString()));
                int res= pst.executeUpdate();
                if (res > 0) {
                    out.println("<h1>image inserted</h1>");
                    out.println("");
                    resp.sendRedirect("./profile.jsp");
                }
            } 
        }catch (Exception e) {

                out.println("<html>");
                out.println("<body>");
                out.println("<span style=color:red> Something went wrong!!!</span>");
                out.println("</body>");
                out.println("</html>");
                resp.sendRedirect("./profile.jsp");
            }

        
        //To change body of generated methods, choose Tools | Templates.
    }
    
   
    

    
}
