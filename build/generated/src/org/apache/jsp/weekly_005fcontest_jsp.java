package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import p1.DBConnection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class weekly_005fcontest_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn=null;
            Statement stm=null;
            Statement stm_opp=null;
            ResultSet rs=null;
            ResultSet rs_opp=null;
            
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


    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }

      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }

      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("        <head>\n");
      out.write("            <link rel=\"stylesheet\" href=\"weekly_contest.css\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("          \n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

             int i=0;
            try
            {
             DBConnection obj =new DBConnection();
            conn=obj.getConnection();
            stm=conn.createStatement();
            stm_opp=conn.createStatement();
            String sql="SELECT * FROM questions";
            String sql_opp="SELECT * FROM oppurtunity";
            rs=stm.executeQuery(sql);
            rs_opp=stm_opp.executeQuery(sql_opp);
           
          
      out.write("\n");
      out.write("        \n");
      out.write("        <div class=\"row\">\n");
      out.write("  <div class=\"column\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("      \n");
      out.write("      <div class=\"container\">\n");
      out.write("       <h3 class=\"glow\">New Opportunity</h3> \n");
      out.write("       <h6>(last date of registration)</h6>\n");
      out.write("       ");

            while(rs_opp.next())
            {
                
      out.write("\n");
      out.write("                <p><h3>");
      out.print( ++i );
      out.write(".\n");
      out.write("                    <a class=\"\" href=\"");
      out.print( rs_opp.getString("Link") );
      out.write("\" id=\"question\" target=\"_blank\">");
      out.print( rs_opp.getString("CompanyName") );
      out.write("</a>-");
      out.print( rs_opp.getString("LastDate") );
      out.write("</h3></p>\n");
      out.write("                      \n");
      out.write("                ");

                 }      

          
      out.write("\n");
      out.write("       \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"column\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("      \n");
      out.write("      <div class=\"container\">\n");
      out.write("      <h3 class=\"glow\">Weekly Contest</h3>\n");
      out.write("      ");

            while(rs.next())
            {
                int id=rs.getInt("q_id");
                if(id==1)
                {
                
      out.write("\n");
      out.write("                      <p><h3>1.<a href=\"contestqstn1.jsp\" id=\"question\">");
      out.print( rs.getString("question") );
      out.write("</a></h3></p>\n");
      out.write("\n");
      out.write("                ");

                 }
                if(id==2)
                {
                
      out.write("\n");
      out.write("                      <p><h3>2.<a href=\"contestqstn2.jsp\" id=\"question\">");
      out.print( rs.getString("question") );
      out.write("</a>              \n");
      out.write("</h3></p>\n");
      out.write("\n");
      out.write("                ");

                 }
                if(id==3)
                {
                
      out.write("\n");
      out.write("                <p><h3>3.<a href=\"contestqstn3.jsp\" id=\"question\">");
      out.print( rs.getString("question") );
      out.write("</a>\n");
      out.write("</h3></p>\n");
      out.write("                ");

                 }
            }
            
      out.write("\n");
      out.write("            ");


            }catch(Exception e)
            {
                out.println(e);
            }
        
      out.write("\n");
      out.write("      \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("        <br><br><br>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
