package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write(' ');

    if(session.getAttribute("user_id")==null || !session.getAttribute("user_id").equals("admin"))
    {
        response.sendRedirect("../sign_in_admin.html");
    }

      out.write(" \n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta content=\"text/html; charset=iso-8859-2\" http-equiv=\"Content-Type\">\n");
      out.write("<link rel=\"stylesheet\" href=\"../cdn.jsdelivr.net_npm_bootstrap@5.0.1_dist_css_bootstrap.min.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"index.css\">\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("         window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("function showQuestion() \n");
      out.write("{\n");
      out.write("  document.getElementById('addQuestion').style.visibility=\"visible\";\n");
      out.write("    document.getElementById('addQuestion').style.height=\"600px\";\n");
      out.write("\n");
      out.write("}\n");
      out.write("function showOppurtunity()\n");
      out.write("{\n");
      out.write("  document.getElementById('addOppurtunity').style.visibility=\"visible\";\n");
      out.write("\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("           <body background=\"../images/bg1.jpg\">\n");
      out.write("         <div id=\"mySidebar\" class=\"sidebar\">\n");
      out.write("  <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\"><img src=\"close.png\"width=\"30px\"height=\"30px\"></a>\n");
      out.write("  <a href=\"profile.jsp\">Profile</a>\n");
      out.write("  <a href=\"#\">Services</a>\n");
      out.write("  <a href=\"#\">Clients</a>\n");
      out.write("  <a href=\"#\">About</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">  \n");
      out.write("            <td><img src=\"../images/logo.png\" width=\"150px\" height=\"150px\"></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("            <td class=\"button button4\">\n");
      out.write("                <a href=\"logout.jsp\" > Log Out </a>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("      <div>\n");
      out.write("        <ul class=\"list-group list-group-horizontal\">\n");
      out.write("          <li class=\"list-group-item\"> \n");
      out.write("            <button class=\"btn btn-info\" onclick=\"showQuestion()\"> Click me to add question</button>\n");
      out.write("          </li>\n");
      out.write("              <li class=\"list-group-item\">\n");
      out.write("               <a href=\"#addOppurtunity\"> <button class=\"btn btn-info\" onclick=\"showOppurtunity()\" > Click me to add oppurtunity</button></a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("      </div>\n");
      out.write("         \n");
      out.write("        <div id=\"addQuestion\" style=\"visibility: hidden;height: 0px;\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "QuestionAdd.jsp", out, false);
      out.write("\n");
      out.write("      </div>   \n");
      out.write("      <div id=\"addOppurtunity\" style=\"visibility: hidden;height: 0px;\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "OppurtunityAdd.jsp", out, false);
      out.write("\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    </html>\n");
      out.write("\n");
      out.write("    ");
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
