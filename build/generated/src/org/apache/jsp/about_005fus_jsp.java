package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_005fus_jsp extends org.apache.jasper.runtime.HttpJspBase
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


    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }

      out.write(" \n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<meta content=\"text/html; charset=iso-8859-2\" http-equiv=\"Content-Type\">\n");
      out.write("<link rel=\"stylesheet\">\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("         window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("\n");
      out.write("</script>\n");
      out.write("<style>\n");
      out.write("body {\n");
      out.write("  font-family: Arial, Helvetica, sans-serif;\n");
      out.write("  margin: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("html {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("*, *:before, *:after {\n");
      out.write("  box-sizing: inherit;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".titletheme{font-family:sans-serif;\n");
      out.write("        font-size:80px;\n");
      out.write("        color:black;}\n");
      out.write("\n");
      out.write(" .button1 \n");
      out.write("  {\n");
      out.write("  background-color: navy;/* Green */\n");
      out.write("  border: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 16px 32px;\n");
      out.write("   text-color: white;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: inline-block;\n");
      out.write("  font-size: 16px;\n");
      out.write("  margin: 4px 2px;\n");
      out.write("  transition-duration: 0.4s;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button4 {border-radius: 12px;\n");
      out.write("color:white;}\n");
      out.write(".button4:hover {\n");
      out.write("  background-color: #008CBA;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".column {\n");
      out.write("  float: left;\n");
      out.write("  width: 33.3%;\n");
      out.write("  margin-bottom: 16px;\n");
      out.write("  padding: 0 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card {\n");
      out.write("  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);\n");
      out.write("  margin: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".about-section {\n");
      out.write("  padding: 50px;\n");
      out.write("  text-align: center;\n");
      out.write("  background-color: navy;\n");
      out.write("  color: white;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("  padding: 0 16px;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".container::after, .row::after {\n");
      out.write("  content: \"\";\n");
      out.write("  clear: both;\n");
      out.write("  display: table;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".title {\n");
      out.write("  color: grey;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button {\n");
      out.write("  border: none;\n");
      out.write("  outline: 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  padding: 8px;\n");
      out.write("  color: white;\n");
      out.write("  background-color: #000;\n");
      out.write("  text-align: center;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".button:hover {\n");
      out.write("  background-color: #555;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".footer{\n");
      out.write("    background-color: lightskyblue;\n");
      out.write("     position: relative;\n");
      out.write("   left: 0;\n");
      out.write("   bottom: 0;\n");
      out.write("   width: 100%;\n");
      out.write("   color: white;\n");
      out.write("   text-align: center;\n");
      out.write("}\n");
      out.write(".fa {\n");
      out.write("  padding: 20px;\n");
      out.write("  font-size: 30px;\n");
      out.write("  width: 80px;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: none;\n");
      out.write("  margin: 5px 2px;\n");
      out.write("  border-radius: 50%;\n");
      out.write("\n");
      out.write("      \n");
      out.write("  \n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa:hover {\n");
      out.write("    opacity: 0.7;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa-facebook {\n");
      out.write("  background: #3B5998;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa-twitter {\n");
      out.write("  background: #55ACEE;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa-linkedin {\n");
      out.write("  background: #007bb5;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".fa-instagram {\n");
      out.write("  background: #f40083;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write(".fa-github{\n");
      out.write("  background: #000;\n");
      out.write("  color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("@media screen and (max-width: 650px) {\n");
      out.write("  .column {\n");
      out.write("    width: 100%;\n");
      out.write("    display: grid;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("            \n");
      out.write("\n");
      out.write("            <td><img src=\"images/logo.png\" width=\"150px\" height=\"150px\"></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("            <td class=\"button1 button4\">\n");
      out.write("                <a style=\"text-decoration:none; color:white;\" href=\"index.jsp\" > HOME </a>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("           \n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("<div class=\"about-section\">\n");
      out.write("  <h1>About Us</h1>\n");
      out.write("  <p>Here are some details of our team.</p>\n");
      out.write("  <p>Resize the browser window to see that this page is responsive by the way.</p>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<h2 style=\"text-align:center\">Our Team</h2>\n");
      out.write("<div class=\"row\">\n");
      out.write("  <div class=\"column\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("        <img src=\"images/bhavesh.jpg\" alt=\"Jane\" style=\"width:100%\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <h2>Bhavesh Panwar</h2>\n");
      out.write("        <p class=\"title\">CEO & Founder</p>\n");
      out.write("        <p>Front and Back End Programmer </p>\n");
      out.write("       \n");
      out.write("        <p><button class=\"button\"></button></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"column\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("        <img src=\"images/mansvi.jpg\" alt=\"Mansvi\" style=\"width:100%\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <h2>Mansvi Shrivastava</h2>\n");
      out.write("        <p class=\"title\">Full Stack Developer</p>\n");
      out.write("        <p>Highly motivated full stack developer from India.<br> A Designer: A user interface designer with a passion of desiging beautiful and functional user experiences. Minimalist who thinks less is more.<br> A Coder: Backend developer who focuses on writting clean, elegant and efficient code. And I enjoy competitive programming.</p>\n");
      out.write("       \n");
      out.write("        <p><button class=\"button\"></button></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"column\">\n");
      out.write("    <div class=\"card\">\n");
      out.write("      <img src=\"images/nikita.jpg\" alt=\"John\" style=\"width:100%\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <h2>Nikita Patel</h2>\n");
      out.write("        <p class=\"title\">Designer</p>\n");
      out.write("        <p>Enthusiastic Front End Programmer</p>\n");
      out.write("    \n");
      out.write("        <p><button class=\"button\"></button></p>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"footer\">\n");
      out.write("<a href=\"#\" class=\"fa fa-facebook\"></a>\n");
      out.write("<a href=\"#\" class=\"fa fa-twitter\"></a>\n");
      out.write("<a href=\"#\" class=\"fa fa-linkedin\"></a>\n");
      out.write("<a href=\"#\" class=\"fa fa-instagram\"></a>\n");
      out.write("<a href=\"#\" class=\"fa fa-github\"></a>\n");
      out.write("</div>\n");
      out.write("\n");
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
