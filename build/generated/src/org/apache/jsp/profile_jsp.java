package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Base64;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import p1.DBConnection;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    String pic="images/default profile.jpg";;
    Blob image=null;
    byte []imgData=null;
    Connection conn=null;
    Connection conn2=null;
    Statement stm=null;
    Statement stm2=null;
    ResultSet rs=null;
    ResultSet rs2=null;
    String name=null;

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Skills</title>\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x\" crossorigin=\"anonymous\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"profile.css\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@100;300&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <style>\n");
      out.write("  .body\n");
      out.write("  {\n");
      out.write("      \n");
      out.write("        font-family: 'Poppins', sans-serif;\n");
      out.write("  }\n");
      out.write("        </style>\n");
      out.write("</head>\n");
      out.write('\n');

  try
    {

    DBConnection obj =new DBConnection();
    conn=obj.getConnection();
    stm=conn.createStatement();
    String sql= "SELECT pic FROM userdata where id = '"+(String)session.getAttribute("user_id")+"'";
    rs=stm.executeQuery(sql);
    while(rs.next())
    {
        image=rs.getBlob("pic");
        imgData=image.getBytes(1, (int)image.length());
        String encodedImage=Base64.getEncoder().encodeToString(imgData);
        pic="data:image/jpg;base64,"+encodedImage;

    }

    }catch(Exception e)
    {
        pic="images/default profile.jpg";

    }
  
   try
   {
       DBConnection obj2=new DBConnection();
        conn2=obj2.getConnection();
    stm2=conn2.createStatement();
    String sql_name= "SELECT fname FROM userdata where id = '"+(String)session.getAttribute("user_id")+"'";
    rs=stm.executeQuery(sql_name);
    while(rs.next())
    {
       name=rs.getString("fname");
    }

   }catch(Exception e)
   {
       out.println("Error in name");
   }
  
      out.write("\n");
      out.write("    <body>\n");
      out.write("    <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("             <td><td>\n");
      out.write("\n");
      out.write("            <td><img src=\"images/logo.png\"width=\"150px\"height=\"150px\"alt=\"logo\"></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("            <td > <button class=\"btn btn-primary btn-lg \" onclick=\"showHidden()\"> Change password</button> </td>\n");
      out.write("        </tr>\n");
      out.write("</table>\n");
      out.write("    <div class=\"skills\">\n");
      out.write("        <div id=\"profile\" class=\"box heading\">Profile</div>\n");
      out.write("        <div class=\"box1\" id=\"profile_name\">Hi,");
      out.print( name );
      out.write("</div>\n");
      out.write("        <img id=\"img_profile\" src=\"");
      out.print( pic );
      out.write("\" alt=\"profile\" width=\"100px\" height=\"100px\">\n");
      out.write("        <div class=\"box1\" id=\"profile_name\">Image file should be less than 1 MB.</div>\n");
      out.write("        <form action=\"UploadImage\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("         <div>\n");
      out.write("             <input type=\"file\" name=\"img\" size=\"50\" accept=\"images/*\">\n");
      out.write("         </div>\n");
      out.write("        <div>\n");
      out.write("            <input type=\"submit\" value=\"Upload\">\n");
      out.write("        </div>\n");
      out.write("        </form>\n");
      out.write("        <form action=\"changePass.jsp\" style=\"visibility: hidden;height: 0px\" method=\"post\" id=\"showChangePass\">\n");
      out.write("            <table class=\"\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        \n");
      out.write("                         current password :  \n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                         <input type=\"password\" name=\"current\" required>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        new password\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"password\" name=\"new\" required>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>\n");
      out.write("                        confirm new password :\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                         <input type=\"password\" name=\"cnew\" required>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td>  \n");
      out.write("                        <input type=\"submit\" class=\"btn btn-primary m-2\">\n");
      out.write("                    </td>    \n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("         </div>\n");
      out.write("\n");
      out.write("\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "skills.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("        <script>\n");
      out.write("            function showHidden()\n");
      out.write("            {\n");
      out.write("                document.getElementById('showChangePass').style.visibility='visible';\n");
      out.write("                document.getElementById('showChangePass').style.height='150px';\n");
      out.write("            }\n");
      out.write("                 window.history.forward();\n");
      out.write("                function noBack() {\n");
      out.write("                    window.history.forward();\n");
      out.write("                }\n");
      out.write("                window.history.forward();\n");
      out.write("        function noBack() {\n");
      out.write("            window.history.forward();\n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("</body>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
