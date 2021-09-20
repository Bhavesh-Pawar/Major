package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class checkEmailOTP_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Sign In Page</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Rajdhani:wght@700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"signin_signup.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("         window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("        *{\n");
      out.write("            font-family: 'Lato', sans-serif;\n");
      out.write("        }\n");
      out.write("\t\t\n");
      out.write("        \n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body background=\"images/bg1.jpg\">\n");
      out.write("     <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("             <td><img src=\"images/logo.png\" width=\"150px\" height=\"150px\" ></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("            <td class=\"button button4\"><a href=\"sign_in_admin.html\">Admin Sign-in Page</a></td>\n");
      out.write("             </tr>\n");
      out.write("       \n");
      out.write("        </table>\n");
      out.write("    <br>\n");
      out.write("    <div id=\"registred\">     </div>\n");
      out.write("<div class=\"design\">\n");
      out.write("       <h2>Sign In</h2> <br>\n");
      out.write(" Welcome to Test Your Skills        <br>\n");
      out.write("    <div style=\"max-width:400px;margin:auto\">\n");
      out.write("\t\n");
      out.write("        <h2>Id didn't Matched</h2>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
