package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Java_005feasy_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("?<!DOCTYPE html>\n");
      out.write("<html >\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Java Easy Question</title>\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"test.css\">\n");
      out.write("    </head>\n");
      out.write("<body background=\"images/bg1.jpg\">\n");
      out.write("    \n");
      out.write("    <div id=\"mySidebar\" class=\"sidebar\">\n");
      out.write("        <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\"><img src=\"images/close.png\"width=\"30px\"height=\"30px\"></a>\n");
      out.write("        <a href=\"#\">Profile</a>\n");
      out.write("        <a href=\"#\">Services</a>\n");
      out.write("        <a href=\"#\">Clients</a>\n");
      out.write("        <a href=\"#\">About</a>\n");
      out.write("    </div>\n");
      out.write("    <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\n");
      out.write("        <tr align=\"center\">\n");
      out.write("             <td><button class=\"openbtn\" onclick=\"openNav()\"><img src=\"images/hamburger.png\"width=\"50px\"height=\"50px\"></button><td>  \n");
      out.write("\n");
      out.write("            <td><img src=\"images/logo.png\"width=\"150px\"height=\"150px\"></td>\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("        <span id=\"display\" class=\"timer\"></span>\n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("        <script>\n");
      out.write("            function openNav() {\n");
      out.write("      document.getElementById(\"mySidebar\").style.width = \"250px\";\n");
      out.write("      document.getElementById(\"main\").style.marginLeft = \"250px\";\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    function closeNav() {\n");
      out.write("      document.getElementById(\"mySidebar\").style.width = \"0\";\n");
      out.write("      document.getElementById(\"main\").style.marginLeft= \"0\";\n");
      out.write("    }\n");
      out.write("             window.history.forward(); \n");
      out.write("            function noBack() { \n");
      out.write("                window.history.forward(); \n");
      out.write("            } \n");
      out.write("    </script>\n");
      out.write("    <script>\n");
      out.write("        var div = document.getElementById('display');\n");
      out.write("        var submitted = document.getElementById('submitted');\n");
      out.write("    \n");
      out.write("          function CountDown(duration, display) {\n");
      out.write("    \n");
      out.write("                    var timer = duration, minutes, seconds;\n");
      out.write("    \n");
      out.write("                  var interVal=  setInterval(function () {\n");
      out.write("                        minutes = parseInt(timer / 60, 10);\n");
      out.write("                        seconds = parseInt(timer % 60, 10);\n");
      out.write("    \n");
      out.write("                        minutes = minutes < 10 ? \"0\" + minutes : minutes;\n");
      out.write("                        seconds = seconds < 10 ? \"0\" + seconds : seconds;\n");
      out.write("                display.innerHTML =\"<b>\" + minutes + \"m : \" + seconds + \"s\" + \"</b>\";\n");
      out.write("                        if (timer > 0) {\n");
      out.write("                           --timer;\n");
      out.write("                        }else{\n");
      out.write("                   clearInterval(interVal)\n");
      out.write("                            SubmitFunction();\n");
      out.write("                         }\n");
      out.write("    \n");
      out.write("                   },1000);\n");
      out.write("    \n");
      out.write("            }\n");
      out.write("    \n");
      out.write("          function SubmitFunction(){\n");
      out.write("            submitted.innerHTML=\"Time is up!\";\n");
      out.write("            document.getElementById('C').submit();\n");
      out.write("    \n");
      out.write("           }\n");
      out.write("         function demoVisibility() \n");
      out.write("         {\n");
      out.write("            document.getElementById('question').style.visibility='visible'; \n");
      out.write("            document.getElementById('startButton').style.visibility='hidden'; \n");
      out.write("            document.getElementById('display').style.visibility='visible'; \n");
      out.write("            CountDown(12000,div);\n");
      out.write("         }  \n");
      out.write("        </script>\n");
      out.write("<div id=\"startButton\"  onclick=demoVisibility() class=\"startTest\">Start the test</div> \n");
      out.write("<div style=\"visibility: hidden;\" id=\"question\">\n");
      out.write("    <form action=\"get_easy_java.jsp\" name=\"C\" id=\"C\" method=\"POST\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>1. Which of the following is not assignment operator?</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"91\" value=\"a\"> += </div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"91\" value=\"b\"> = =</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"91\" value=\"c\"> %= </div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"91\" value=\"d\"> =</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>2. The java interpreter uses ____________ method before any objects are created.</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"92\" value=\"a\"> Class </div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"92\" value=\"b\"> Main </div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"92\" value=\"c\"> Constructor </div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"92\" value=\"d\"> All of above </div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>3. Java does not support ______________.</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"93\" value=\"a\"> Operator overloading </div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"93\" value=\"b\"> Global variable</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"93\" value=\"c\"> Multiple inheritance</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"93\" value=\"d\"> All of above</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>4. What keyword is used in Java to define a constant?</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"94\" value=\"a\"> static</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"94\" value=\"b\"> final</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"94\" value=\"c\"> abstract</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"94\" value=\"d\"> private</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>5. ?Use of undeclared variables? is the ______________ type of error.</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"95\" value=\"a\"> Logical</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"95\" value=\"b\"> Exception</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"95\" value=\"c\"> Run-time</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"95\" value=\"d\"> Compile-time</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>6.  _____ is used to find and fix bugs in the Java programs.</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"96\" value=\"a\"> JVM</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"96\" value=\"b\"> JRE</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"96\" value=\"c\"> JDK</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"96\" value=\"d\"> JDB</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>7. What is the return type of the hashCode() method in the Object class?</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"97\" value=\"a\"> Object</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"97\" value=\"b\"> int</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"97\" value=\"c\"> long</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"97\" value=\"d\"> void</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>8. Which of the following is a reserved keyword in Java?</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"98\" value=\"a\"> object</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"98\" value=\"b\"> strictfp</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"98\" value=\"c\"> main</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"98\" value=\"d\"> system</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>9. Given, ArrayList list = new ArrayList();  <br>What is the initial quantity of the ArrayList list?</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"99\" value=\"a\"> 5</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"99\" value=\"b\"> 10</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"99\" value=\"c\"> 0</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"99\" value=\"d\"> 100</div>  \n");
      out.write("        </div>\n");
      out.write("        <div class=\"container\">\n");
      out.write("        <div>10. What is the result of the following program?<br>\n");
      out.write("\n");
      out.write("public static synchronized void main(String[] args) throws <br> \n");
      out.write("InterruptedException {  <br>\n");
      out.write("     Thread f = new Thread(); <br> \n");
      out.write("      f.start();  <br>\n");
      out.write("      System.out.print(\"A\");  <br>\n");
      out.write("      f.wait(1000);  <br>\n");
      out.write("      System.out.print(\"B\"); <br> \n");
      out.write("}  </div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"100\" value=\"a\"> It prints A and B with a 1000 seconds delay between them</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"100\" value=\"b\"> It only prints A and exits</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"100\" value=\"c\"> It only prints B and exits</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"100\" value=\"d\"> A will be printed, and then an exception is thrown.</div>  \n");
      out.write("        </div>\n");
      out.write("        <input class=\"btn\" type=\"submit\">\n");
      out.write("        ");

            session.setAttribute("status", "true");
         
      out.write(" \n");
      out.write("    </form>\n");
      out.write("</div>\n");
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
