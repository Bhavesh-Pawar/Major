package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.util.Enumeration;
import java.sql.Connection;
import java.sql.PreparedStatement;
import p1.DBConnection;

public final class addQuestion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection conn=null;
            PreparedStatement pstmt=null;
            Statement stm=null;
            
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("  \n");
      out.write("        ");

            DBConnection obj =new DBConnection();
            try
            {  
                conn=obj.getConnection();
                String insert_sql="INSERT into questions() values(?,?,?,?,?,?,?)";
                
                String truncate_sql="TRUNCATE questions"; //truncate if already it has questions
                stm=conn.createStatement();
                stm.execute(truncate_sql);
                
                pstmt=conn.prepareStatement(insert_sql);
//                String[] q_id =request.getParameterValues("q_id");
                String[] question =request.getParameterValues("question");
                String[] description =request.getParameterValues("description");
                String[] test_input_1 =request.getParameterValues("test_input_1");
                String[] test_output_1 =request.getParameterValues("test_output_1");
                String[] test_input_2 =request.getParameterValues("test_input_2");
                String[] test_output_2 =request.getParameterValues("test_output_2");              
              
                for(int i=0;i<3;i++)
                {
                pstmt.setInt(1, i + 1);
                pstmt.setString(2, question[i]);
                pstmt.setString(3, description[i]);
                pstmt.setString(4, test_input_1[i]);
                pstmt.setString(5, test_output_1[i]);
                pstmt.setString(6, test_input_2[i]);
                pstmt.setString(7, test_output_2[i]);
                // Add row to the batch.
                pstmt.addBatch();
                }
                pstmt.executeBatch();
            }catch(Exception e)
            {
                out.println(e);
            }
        
      out.write("\n");
      out.write("            \n");
      out.write("        \n");
      out.write("\n");
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
