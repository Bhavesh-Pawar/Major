package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import p1.DBConnection;

public final class contestqstn1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn=null;
            Statement stm=null;
            ResultSet rs=null;
            
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"cdn.jsdelivr.net_npm_bootstrap@5.0.1_dist_css_bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"contest_new_page.css\">\n");
      out.write("    </head>\n");
      out.write("    <body> \n");
      out.write("        <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("          \n");
      out.write("\n");
      out.write("            <td><img src=\"images/logo.png\"width=\"150px\"height=\"150px\"alt=\"logo\"></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("            <td ><a href=\"index.jsp\" class=\"btn btn-primary\">Go to Home Page </a></td>\n");
      out.write("        </tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("           \n");
      out.write("        ");

            try
            {
             DBConnection obj =new DBConnection();
            conn=obj.getConnection();
            stm=conn.createStatement();
            String sql="SELECT * FROM questions WHERE q_id = 1";
            rs=stm.executeQuery(sql);
            
      out.write("\n");
      out.write("            ");

            while(rs.next())
            {
                
      out.write("\n");
      out.write("                <nav class=\"mx-6 justify-content-between\">\n");
      out.write("                    <ul class=\"pagination\">\n");
      out.write("                        <li class=\"page-item active\"><a class=\"page-link\">1</a></li>\n");
      out.write("                        <li class=\"page-item\"><a class=\"page-link\" href=\"contestqstn2.jsp\">2</a></li>\n");
      out.write("                        <li class=\"page-item\"><a class=\"page-link\" href=\"contestqstn3.jsp\">3</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </nav>\n");
      out.write("                <div class=\"container_\">    \n");
      out.write("                    <div class=\"box\" id=\"contestqstn\">\n");
      out.write("                        <h3 id=\"heading\">Weekly Contest</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li class=\"subhead\">Problem Statement</li></br>\n");
      out.write("                       <li>");
      out.print( rs.getString("question") );
      out.write("</li></br>\n");
      out.write("                       <li class=\"subhead\">Description</li></br>\n");
      out.write("                       <li> ");
      out.print( rs.getString("description") );
      out.write("</li></br>\n");
      out.write("                       <li class=\"subhead\">Sample Input</li></br>\n");
      out.write("                        <li>");
      out.print( rs.getString("test_input_1") );
      out.write("</li></br>\n");
      out.write("                        <li class=\"subhead\">Sample Output</li></br>\n");
      out.write("                        <li>");
      out.print( rs.getString("test_output_1") );
      out.write("</li></br>\n");
      out.write("                        <li class=\"subhead\">Sample Input</li></br>\n");
      out.write("                        <li>");
      out.print( rs.getString("test_input_2") );
      out.write("</li></br>\n");
      out.write("                        <li class=\"subhead\">Sample Output</li></br>\n");
      out.write("                        <li>");
      out.print( rs.getString("test_output_2") );
      out.write("</li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                ");

            }
                
      out.write("\n");
      out.write("                    <div class=\"box\">\n");
      out.write("                        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Compiler.html", out, false);
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            ");

                }
                catch(Exception e)
            {
                out.println(e);
            }
        
      out.write("   \n");
      out.write("    </body>\n");
      out.write("</html>");
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
