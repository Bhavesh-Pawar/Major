package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class OppurtunityAdd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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


if(session.getAttribute("user_id")==null || !session.getAttribute("user_id").equals("admin"))
{
    response.sendRedirect("../sign_in_admin.html");
}

      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>JSP Page</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"examNameAdd.css\">\r\n");
      out.write("    <script src=\"jquery.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("       \r\n");
      out.write("        <div class=\"qstndiv\">\r\n");
      out.write("            <form action=\"addOppurtunity.jsp\" method=\"post\">\r\n");
      out.write("            <table class=\"qstable\">\r\n");
      out.write("                <tr id=\"qshading\">\r\n");
      out.write("                    <td id=\"qno\">Company Name</td>\r\n");
      out.write("                    <td id=\"qstn\">Exam name</td>\r\n");
      out.write("                    <td id=\"dscrip\">Link</td>\r\n");
      out.write("                    <td class=\"tst\">Last date of registration</td> \r\n");
      out.write("               </tr>\r\n");
      out.write("               <tr>\r\n");
      out.write("                   <td><textarea class=\"test sno\" name=\"companyName\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"descibe\" name=\"examName\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"descibe\" name=\"link\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"test\" name=\"lastDate\" ></textarea></td>\r\n");
      out.write("               </tr>\r\n");
      out.write("               <tr>\r\n");
      out.write("                   <td><textarea class=\"test sno\" name=\"companyName\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"descibe\" name=\"examName\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"descibe\" name=\"link\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"test\" name=\"lastDate\" ></textarea></td>\r\n");
      out.write("               </tr>\r\n");
      out.write("               <tr>\r\n");
      out.write("                   <td><textarea class=\"test sno\" name=\"companyName\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"descibe\" name=\"examName\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"descibe\" name=\"link\" ></textarea></td>\r\n");
      out.write("                   <td><textarea class=\"test\" name=\"lastDate\" ></textarea></td>\r\n");
      out.write("               </tr> \r\n");
      out.write("           </table>  \r\n");
      out.write("         <input type=\"submit\" id=\"upload\" value=\"Update Oppurtunity\">\r\n");
      out.write("         <button id=\"addRow\"> Add More Rows </button>\r\n");
      out.write("\r\n");
      out.write("        </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
