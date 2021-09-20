package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import p1.MD;
import p1.DBConnection;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class sign_005fin_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<head>\n");
      out.write("    <link rel=\"stylesheet\" href=\"signin_signup.css\">\n");
      out.write("    <link rel=\"preconnect\" href=\"https://fonts.gstatic.com\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Cormorant+Upright:wght@500&display=swap\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<script>\n");
      out.write("     window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("  </script>\n");
      out.write("    <body onload=\"noBack()\">\n");
      out.write('\n');

    
if(request.getMethod().equalsIgnoreCase("POST"))
{
    try
{
    String username=request.getParameter("email");
    String userpass=request.getParameter("password");
    String hashedPass=null;
    String DBusername=null;
    String DBuserpass=null;
    int i=0;
//    out.println(username);
    DBConnection db =new DBConnection();
    MD md=new MD();
    hashedPass=md.MD5(userpass).toString();
    conn=db.getConnection();
    stm=conn.createStatement();
    String sql="SELECT * FROM userdata where username='"+username+"'";
    rs=stm.executeQuery(sql);
    while(rs.next())
    {
         if(rs.getString("username").equals(username) && hashedPass.equals(rs.getString("userpass")))
    {
        session.setAttribute("user_id", rs.getString("id"));
            
     response.sendRedirect("./admin/index.jsp");
    }   
         else
         {
             
      out.write("\n");
      out.write("             <div class=\"registered\">\n");
      out.write("                 <div class=\"message\">\n");
      out.write("                     Incorrect Password\n");
      out.write("                 </div>\n");
      out.write("                 <a href=\"sign_in.html\" class=\"goto\">TRY AGAIN</a>\n");
      out.write("             </div>            \n");
      out.write("             ");

         }
     i++;    
    }
   if(i==0)
   {
       
      out.write("\n");
      out.write("       <div class=\"registered\">\n");
      out.write("          <div class=\"message\"> Something went wrong.. You might not have Signed Up Yet</div>\n");
      out.write("          <a href=\"sign_up.html\" class=\"goto\">Go to Sign up page </a> \n");
      out.write("       </div>\n");
      out.write("        \n");
      out.write("  ");

   }
}catch(Exception c)
{
response.sendRedirect("sign_in.html");
}
}
 else
{

      out.write("\n");
      out.write("<div class=\"registered\">\n");
      out.write("          <div class=\"message\"> Unexpected Error</div>\n");
      out.write("          <a href=\"sign_in.html\" class=\"goto\">Please go to sign in page </a> \n");
      out.write("       </div>\n");
      out.write("\n");

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
