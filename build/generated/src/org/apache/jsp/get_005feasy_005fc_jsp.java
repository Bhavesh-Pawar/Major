package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import p1.DBConnection;
import java.util.Enumeration;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class get_005feasy_005fc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Connection connection = null,conn=null;
Statement statement = null;
ResultSet resultSet = null;
PreparedStatement pstm=null;
int i=0;

 
 int  correct,incorrect,left;
 int mean;
   
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
      response.setContentType("text/html");
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
      out.write("<html>\n");
      out.write("    <body onload=\"noBack()\">\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("         window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<h1>Retrieve data from database in jsp</h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("   ");

      
try{
    DBConnection obj= new DBConnection();
connection = obj.getConnection();
statement=connection.createStatement();
System.out.println("Success");
String sql ="select * from answer where id>=1 and id<=10";
correct=0;
incorrect=0;
left=0;
int i=1;
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{ 
        if(resultSet.getString("option").equals(request.getParameter(""+i+"")))
        {correct++;}
        else 
        {  if(request.getParameter(""+i+"")==null)
            {
                left++;
            }
        else
            {
                incorrect++;
            }
        }
        i++ ;
}
if(session.getAttribute("status")!=null)
{
   String sql_score="insert into score() values(?,?,?,?)";
 pstm=connection.prepareStatement(sql_score);
 pstm.setInt(1,0);
 pstm.setInt(2,Integer.parseInt((String)session.getAttribute("user_id")));
 pstm.setInt(3,correct );
 pstm.setString(4,"c");
 i = pstm.executeUpdate();
session.removeAttribute("status");
}
sql="SELECT AVG(scores) AS mean FROM score";
connection.close();
} catch (Exception e) {
out.println(e);
}

      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "chart.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("<h2>Correct answers are : ");
      out.print( correct );
      out.write("</h2>\n");
      out.write("<h2>InCorrect answers are : ");
      out.print( incorrect );
      out.write("</h2>\n");
      out.write("<h2>Left answers are : ");
      out.print( left );
      out.write("</h2>\n");
      out.write("<h2> ");
      out.print( session.getAttribute("user_id") );
      out.write(" </h2>\n");
      out.write("</body>\n");
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
