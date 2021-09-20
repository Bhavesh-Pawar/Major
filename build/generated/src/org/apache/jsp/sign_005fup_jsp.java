package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import p1.MD;
import p1.DBConnection;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class sign_005fup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    Connection conn=null;
    PreparedStatement stm=null;

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
      out.write("<head>\n");
      out.write("    <link rel=\"stylesheet\" href=\"signin_signup.css\">\n");
      out.write("</head>\n");
      out.write("<script>\n");
      out.write("     window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("    </script\n");
      out.write("    <body onload=\"noBack()\">\n");
      out.write('\n');


if(request.getMethod().equalsIgnoreCase("POST"))
{
    try
{
    String hashedPass=null;
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String username=request.getParameter("email");
    String userpass=request.getParameter("password");
    DBConnection db =new DBConnection();
    MD md=new MD();
    conn=db.getConnection();
    String sql="insert into userdata() values(?,?,?,?,?,?)";
    stm=conn.prepareStatement(sql);
    
    hashedPass=md.MD5(userpass).toString();
    stm.setInt(1, 0);
    stm.setString(2,fname);
    stm.setString(3, lname);
    stm.setString(4, username);
    stm.setString(5, hashedPass);
    stm.setString(6, null);
    int i=stm.executeUpdate();
    if(i>0)
    {
        
       
      out.write("\n");
      out.write("           <div class=\"registered\">\n");
      out.write("           <div class=\"message\">\n");
      out.write("           Hello, Your username is : ");
      out.print( username );
      out.write("\n");
      out.write("           <a href=\"sign_in.html\" class=\"goto\">GO TO SIGN IN</a>\n");
      out.write("           </div>\n");
      out.write("           </div>\n");
      out.write("           \n");
      out.write("       ");

    }
}catch(MySQLIntegrityConstraintViolationException e)
{
   
      out.write("\n");
      out.write("       <div class=\"registered\"> \n");
      out.write("\n");
      out.write("    <div class=\"message\">\n");
      out.write("       Already registered.....Please sign in.\n");
      out.write("       </div>\n");
      out.write("       <div>\n");
      out.write("       <a href=\"sign_in.html\" class=\"goto\">Go to Sign in Page</a>\n");
      out.write("       </div>\n");
      out.write("       </div>\n");
      out.write("       \n");
      out.write("   ");
    
}
}
else 
{
   
      out.write("\n");
      out.write("     <div class=\"registered\">\n");
      out.write("       <div class=\"message\">\n");
      out.write("       Unexpected Error\n");
      out.write("       </div>\n");
      out.write("       \n");
      out.write("       <div>\n");
      out.write("       <a href=\"sign_in.html\" class=\"goto\">Go to Sign in Page</a>\n");
      out.write("       </div>\n");
      out.write("     \n");
      out.write("       </div>   \n");
      out.write("   ");

}
    

      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
