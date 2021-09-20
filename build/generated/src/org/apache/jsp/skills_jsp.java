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

public final class skills_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    
    Connection conn=null;
    Statement stm=null; 
    ResultSet rs=null;
    double c=0,cpp=0,java=0,python=0;

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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Skills</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"profile.css\">\n");
      out.write("</head>\n");
      out.write('\n');

  try
    {
        
        DBConnection obj =new DBConnection();
    conn=obj.getConnection();
    stm=conn.createStatement();
 String sql_python="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='python'and user_id='"+(String)session.getAttribute("user_id")+"'";
    rs=stm.executeQuery(sql_python);
    try
    {
           while(rs.next())
        python=rs.getDouble("per");
    }catch(Exception e)
    {
        python=0;
        out.print("By python");
    }
    
  String sql_c="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='c' and user_id='"+(String)session.getAttribute("user_id").toString()+"'";
    rs=stm.executeQuery(sql_c);
    try
    {
           while(rs.next())
        c=rs.getDouble("per");
    }catch(Exception e)
    {
        c=0;
         out.print("By c");
    }
       
    
    String sql_cpp="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='c++' and user_id='"+(String)session.getAttribute("user_id").toString()+"'";
    rs=stm.executeQuery(sql_cpp);
    try
    {
           while(rs.next())
        cpp=rs.getDouble("per");
    }catch(Exception e)
    {
        cpp=0;
         out.print("By c++");
    }
    
    String sql_java="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='java' and user_id='"+(String)session.getAttribute("user_id").toString()+"'";
    rs=stm.executeQuery(sql_java);
   try
    {
           while(rs.next())
        java=rs.getDouble("per");
    }catch(Exception e)
    {
        java=0;
         out.print("By java");
    }
  
    }catch(Exception e)
    {
out.println(e);        
    }

   
    
      out.write("\n");
      out.write("    \n");
      out.write("    <div class=\"skills\">\n");
      out.write("        \n");
      out.write("        <div class=\"heading box\">My Skills</div>\n");
      out.write("        <div class=\"subject box\">C</div>\n");
      out.write("        <div class=\"box\"><span class=\"bar\"><span style=\"width: ");
      out.print( c*10);
      out.write("%;\"></span></span> <span class=\"percent\">");
      out.print( c*10);
      out.write("%</span></div>\n");
      out.write("        <div class=\"subject box\">C++</div>\n");
      out.write("        <div class=\"box\"><span class=\"bar\"><span style=\"width: ");
      out.print( cpp*10);
      out.write("%;\"></span></span>  <span class=\"percent\">");
      out.print( cpp*10);
      out.write("%</span></div>\n");
      out.write("        <div class=\"subject box\">Java</div>\n");
      out.write("        <div class=\"box\"><span class=\"bar \"><span style=\"width: ");
      out.print( java*10);
      out.write("%;\"></span></span>  <span class=\"percent\">");
      out.print( java*10);
      out.write("%</span></div> \n");
      out.write("        <div class=\"subject box\">Python</div>\n");
      out.write("        <div class=\"box\"><span class=\"bar\"><span style=\"width: ");
      out.print( python*10);
      out.write("%;\"></span></span>  <span class=\"percent\">");
      out.print( python*10);
      out.write("%</span></div>\n");
      out.write("        <div id=\"home_btn\"><a href=\"index.jsp\">Back to Home</a></div>\n");
      out.write("    </div>\n");
      out.write("        <script>\n");
      out.write("                 window.history.forward(); \n");
      out.write("                function noBack() { \n");
      out.write("                    window.history.forward(); \n");
      out.write("                } \n");
      out.write("                window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
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
