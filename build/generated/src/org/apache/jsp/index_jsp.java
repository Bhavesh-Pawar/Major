package org.apache.jsp;

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


    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }

      out.write(" \n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta content=\"text/html; charset=iso-8859-2\" http-equiv=\"Content-Type\">\n");
      out.write("<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x\" crossorigin=\"anonymous\">\n");
      out.write("<link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("         window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("\n");
      out.write("</script>\n");
      out.write("    \n");
      out.write("        <body background=\"images/bg1.jpg\">\n");
      out.write("         <div id=\"mySidebar\" class=\"sidebar\">\n");
      out.write("  <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\"><img src=\"close.png\"width=\"30px\"height=\"30px\"></a>\n");
      out.write("  <a href=\"profile.jsp\">Profile</a>\n");
      out.write("  <a href=\"#\">Services</a>\n");
      out.write("  <a href=\"#\">Clients</a>\n");
      out.write("  <a href=\"#\">About</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("            <td><button class=\"openbtn\" onclick=\"openNav()\"><img src=\"images/hamburger.png\" width=\"50px\" height=\"50px\"></button><td>  \n");
      out.write("\n");
      out.write("            <td><img src=\"images/logo.png\" width=\"150px\" height=\"150px\"></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("            <td class=\"button button4\">\n");
      out.write("                <a href=\"logout.jsp\" > Log Out </a>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("           \n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("    <table width=\"100%\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("             <td class=\"highlighter\"><a href=\"index.jsp\">Home</a></td>\n");
      out.write("            <td class=\"dropdown dropbtn\">C \n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("                <a href=\"TestPages/C_easy.jsp\">Easy</a>\n");
      out.write("            <a href=\"TestPages/C_medium.jsp\">Medium</a>\n");
      out.write("            <a href=\"TestPages/C_difficult.jsp\">Difficult</a>\n");
      out.write("            </div></td>\n");
      out.write("             <td class=\"dropdown dropbtn\">C++ \n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("            <a href=\"TestPages/Cpp_easy.jsp\">Easy</a>\n");
      out.write("            <a href=\"TestPages/Cpp_medium.jsp\">Medium</a>\n");
      out.write("            <a href=\"TestPages/Cpp_difficult.jsp\">Difficult</a>\n");
      out.write("            </div></td>\n");
      out.write("             <td class=\"dropdown dropbtn\">Python\n");
      out.write("            <div class=\"dropdown-content\">\n");
      out.write("            <a href=\"TestPages/Python_easy.jsp\">Easy</a>\n");
      out.write("            <a href=\"TestPages/Python_medium.jsp\">Medium</a>\n");
      out.write("            <a href=\"TestPages/Python_difficult.jsp\">Difficult</a>\n");
      out.write("            </div></td>\n");
      out.write("            <td class=\"dropdown dropbtn\">Java \n");
      out.write("              <div class=\"dropdown-content\">\n");
      out.write("                  <a href=\"TestPages/Java_easy.jsp\">Easy</a>\n");
      out.write("                  <a href=\"TestPages/Java_medium.jsp\">Medium</a>\n");
      out.write("                  <a href=\"TestPages/Java_difficult.jsp\">Difficult</a>\n");
      out.write("              </div></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("  \n");
      out.write("          </br>\n");
      out.write("          </br>\n");
      out.write("          </br>\n");
      out.write("          <table width=\"100%\">\n");
      out.write("              <tr>\n");
      out.write("                 <!-- <td><input type=\"submit\" style=width:90%;height:200px;background-color:white;border-radius:50px; value=\"File Missing Person Complain\"></td>\n");
      out.write("                  <!--<td><input type=\"submit\" style=width:50%; height:2000px; font-family:sans-serif; font-size:20px; background-color:black; border-radius:300px; value=\"Found Person\"></td>-->\n");
      out.write("              \n");
      out.write("                      <td></td>\n");
      out.write("              </tr>\n");
      out.write("                 </table>\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "weekly_contest.jsp", out, false);
      out.write("\n");
      out.write("          <br><br><br><br><br><br>\n");
      out.write("          <div class=\"w3-content w3-section\" style=\"max-width:1500px\">\n");
      out.write("              <img class=\"mySlides\" src=\"images/t1.jpg\" style=\"width:100%\">\n");
      out.write("  <img class=\"mySlides\" src=\"images/t2.jpg\" style=\"width:100%\">\n");
      out.write("  <img class=\"mySlides\" src=\"images/t3.jpg\" style=\"width:100%\">\n");
      out.write("   <img class=\"mySlides\" src=\"images/t4.jpg\" style=\"width:100%\">\n");
      out.write("    <img class=\"mySlides\" src=\"images/t5.jpg\" style=\"width:100%\">\n");
      out.write("    <img class=\"mySlides\" src=\"images/t6.jpg\" style=\"width:100%\">\n");
      out.write("</div>\n");
      out.write("          <script>\n");
      out.write("function openNav() {\n");
      out.write("  document.getElementById(\"mySidebar\").style.width = \"250px\";\n");
      out.write("  document.getElementById(\"main\").style.marginLeft = \"250px\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("function closeNav() {\n");
      out.write("  document.getElementById(\"mySidebar\").style.width = \"0\";\n");
      out.write("  document.getElementById(\"main\").style.marginLeft= \"0\";\n");
      out.write("}\n");
      out.write("var myIndex = 0;\n");
      out.write("carousel();\n");
      out.write("\n");
      out.write("function carousel() {\n");
      out.write("  var i;\n");
      out.write("  var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("  for (i = 0; i < x.length; i++) {\n");
      out.write("    x[i].style.display = \"none\";  \n");
      out.write("  }\n");
      out.write("  myIndex++;\n");
      out.write("  if (myIndex > x.length) {myIndex = 1}    \n");
      out.write("  x[myIndex-1].style.display = \"block\";  \n");
      out.write("  setTimeout(carousel, 3000); // Change image every 3 seconds\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("    </body>\n");
      out.write("    </html>\n");
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
