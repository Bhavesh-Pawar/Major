package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tutorial_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Tutorials</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"cdn.jsdelivr.net_npm_bootstrap@5.0.1_dist_css_bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"tutorial.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("            <td><img src=\"images/logo.png\"width=\"150px\"height=\"150px\"alt=\"logo\"></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("            <td class=\"btn btn-primary mt-4\"><h3><a href=\"index.jsp\">Index Page</a></h3></td>\n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("        \n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"box\"><iframe width=\"350\" height=\"200\" src=\"https://www.youtube.com/embed/KObtkOCj1NU\" allowfullscreen></iframe>\n");
      out.write("                <span>Best Way To Get Started With Coding</span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box\"><iframe width=\"350\" height=\"200\" src=\"https://www.youtube.com/embed/IGGiaLMrzXo\" allowfullscreen></iframe>\n");
      out.write("                <span>Fundamentals Of C Programming Interview Questions</span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box\"><iframe width=\"350\" height=\"200\" src=\"https://www.youtube.com/embed/jyiyrmsqyBk\" allowfullscreen></iframe>\n");
      out.write("                <span>5 Steps To Improve Programming Skills</span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box\"><iframe width=\"350\" height=\"200\" src=\"https://www.youtube.com/embed/XjYcJEaPWlg\" allowfullscreen></iframe>\n");
      out.write("                <span>5 Steps To Improve Programming Skills</span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box\"><iframe width=\"350\" height=\"200\" src=\"https://www.youtube.com/embed/xAeiXy8-9Y8\" allowfullscreen></iframe>\n");
      out.write("                <span>5 Steps To Improve Programming Skills</span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box\"><iframe width=\"350\" height=\"200\" src=\"https://www.youtube.com/embed/qZNRKB0uR5o\" allowfullscreen></iframe>\n");
      out.write("                <span>5 Steps To Improve Programming Skills</span>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"box\"><iframe width=\"350\" height=\"200\" src=\"https://www.youtube.com/embed/9CP2MzAZTUc\" allowfullscreen></iframe>\n");
      out.write("                <span>5 Steps To Improve Programming Skills</span>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        </body>\n");
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
