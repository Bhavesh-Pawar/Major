package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Python_005feasy_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Python Easy Question</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"test.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <script>\r\n");
      out.write("        function openNav() {\r\n");
      out.write("          document.getElementById(\"mySidebar\").style.width = \"250px\";\r\n");
      out.write("          document.getElementById(\"main\").style.marginLeft = \"250px\";\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        function closeNav() {\r\n");
      out.write("          document.getElementById(\"mySidebar\").style.width = \"0\";\r\n");
      out.write("          document.getElementById(\"main\").style.marginLeft= \"0\";\r\n");
      out.write("        }\r\n");
      out.write("        </script>\r\n");
      out.write("<body background=\"images/bg1.jpg\">\r\n");
      out.write("    <div id=\"mySidebar\" class=\"sidebar\">\r\n");
      out.write("        <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\"><img src=\"images/close.png\"width=\"30px\"height=\"30px\"></a>\r\n");
      out.write("        <a href=\"#\">Profile</a>\r\n");
      out.write("        <a href=\"#\">Services</a>\r\n");
      out.write("        <a href=\"#\">Clients</a>\r\n");
      out.write("        <a href=\"#\">About</a>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\r\n");
      out.write("        <tr align=\"center\">\r\n");
      out.write("             <td><button class=\"openbtn\" onclick=\"openNav()\"><img src=\"images/hamburger.png\"width=\"50px\"height=\"50px\"></button><td>  \r\n");
      out.write("\r\n");
      out.write("            <td><img src=\"images/logo.png\"width=\"150px\"height=\"150px\"></td>\r\n");
      out.write("            <td class=\"titletheme\">Test Your Skills</td>\r\n");
      out.write("        </tr>\r\n");
      out.write("       <tr>\r\n");
      out.write("            \r\n");
      out.write("                <span id=\"display\" class=\"timer\"></span>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"submitted\"></div>          \r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <!-- <div class=\"start\"><button class=\"btn\">Start</button></div> -->\r\n");
      out.write(" <script>\r\n");
      out.write("    var div = document.getElementById('display');\r\n");
      out.write("    var submitted = document.getElementById('submitted');\r\n");
      out.write("\r\n");
      out.write("      function CountDown(duration, display) {\r\n");
      out.write("\r\n");
      out.write("                var timer = duration, minutes, seconds;\r\n");
      out.write("\r\n");
      out.write("              var interVal=  setInterval(function () {\r\n");
      out.write("                    minutes = parseInt(timer / 60, 10);\r\n");
      out.write("                    seconds = parseInt(timer % 60, 10);\r\n");
      out.write("\r\n");
      out.write("                    minutes = minutes < 10 ? \"0\" + minutes : minutes;\r\n");
      out.write("                    seconds = seconds < 10 ? \"0\" + seconds : seconds;\r\n");
      out.write("            display.innerHTML =\"<b>\" + minutes + \"m : \" + seconds + \"s\" + \"</b>\";\r\n");
      out.write("                    if (timer > 0) {\r\n");
      out.write("                       --timer;\r\n");
      out.write("                    }else{\r\n");
      out.write("               clearInterval(interVal)\r\n");
      out.write("                        SubmitFunction();\r\n");
      out.write("                     }\r\n");
      out.write("\r\n");
      out.write("               },1000);\r\n");
      out.write("\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("      function SubmitFunction(){\r\n");
      out.write("        submitted.innerHTML=\"Time is up!\";\r\n");
      out.write("        document.getElementById('C').submit();\r\n");
      out.write("\r\n");
      out.write("       }\r\n");
      out.write("     function demoVisibility() \r\n");
      out.write("     {\r\n");
      out.write("        document.getElementById('question').style.visibility='visible'; \r\n");
      out.write("        document.getElementById('startButton').style.visibility='hidden'; \r\n");
      out.write("        document.getElementById('display').style.visibility='visible'; \r\n");
      out.write("        CountDown(1200,div);\r\n");
      out.write("     }  \r\n");
      out.write("    </script>\r\n");
      out.write("    <div id=\"startButton\"  onclick=demoVisibility() class=\"startTest\">Start the test</div> \r\n");
      out.write("    <div style=\"visibility: hidden;\" id=\"question\"> \r\n");
      out.write("        <form action=\"get_easy_python.jsp\" method=\"POST\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"question\"><span class=\"dot\">01</span>Is Python case sensitive when dealing with identifiers?</div>\r\n");
      out.write("            <div>a<input type=\"radio\"  name=\"61\" value=\"a\"> yes</div>\r\n");
      out.write("            <div>b<input type=\"radio\"  name=\"61\" value=\"b\">no</div>\r\n");
      out.write("            <div>c<input type=\"radio\"  name=\"61\" value=\"c\">machine dependent</div>\r\n");
      out.write("            <div>d<input type=\"radio\"  name=\"61\" value=\"d\"> none of the mentioned</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"question\"><span class=\"dot\">02</span>What is the maximum possible length of an identifier?</div>\r\n");
      out.write("               \r\n");
      out.write("            <div>a<input type=\"radio\" name=\"62\" value=\"a\">31 characters</div>\r\n");
      out.write("            <div>b<input type=\"radio\" name=\"62\" value=\"b\">63 characters</div>\r\n");
      out.write("            <div>c<input type=\"radio\" name=\"62\" value=\"c\">79 characters</div>\r\n");
      out.write("            <div>d<input type=\"radio\" name=\"62\" value=\"d\">none of the mentioned</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">03</span>Which of the following is invalid? </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"63\" value=\"a\">_a = 1</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"63\" value=\"b\">__a = 1</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"63\" value=\"c\">__str__ = 1</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"63\" value=\"d\">none of the mentioned</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">04</span>All keywords in Python are in _________  </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"64\" value=\"a\"> lower case</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"64\" value=\"b\">UPPER CASE</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"64\" value=\"c\"> Capitalized</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"64\" value=\"d\">None of the mentioned</div> \r\n");
      out.write("        </div> \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">05</span>What is the output of print 0.1 + 0.2 == 0.3?</div>\r\n");
      out.write("     <div>a<input type=\"radio\" name=\"65\" value=\"a\">True</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"65\" value=\"b\">False</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"65\" value=\"c\">Machine dependent</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"65\" value=\"d\">Error</div> \r\n");
      out.write("        </div> \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">06</span>Which of the following is not a complex number</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"66\" value=\"a\">k = 2 + 3j</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"66\" value=\"b\">k = complex(2, 3)</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"66\" value=\"c\">k = 2 + 3l</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"66\" value=\"d\">k = 2 + 3J</div> \r\n");
      out.write("        </div> \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">07</span>What is the type of inf</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"67\" value=\"a\">Boolean</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"67\" value=\"b\"> Integer</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"67\" value=\"c\">Float</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"67\" value=\"d\">Complex</div> \r\n");
      out.write("        </div> \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">08</span>What will be the output of the following code? \r\n");
      out.write("<pre>s = 'ABC'\r\n");
      out.write("    n = 1\r\n");
      out.write("    for c in s:\r\n");
      out.write("        print c * n,\r\n");
      out.write("        n += 1\r\n");
      out.write("</pre></div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"68\" value=\"a\">\r\n");
      out.write("<pre>\r\n");
      out.write("A\r\n");
      out.write("B\r\n");
      out.write("C\r\n");
      out.write("</pre>\r\n");
      out.write("</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"68\" value=\"b\"> <pre> A B C</pre></div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"68\" value=\"c\">\r\n");
      out.write("<pre>\r\n");
      out.write("A\r\n");
      out.write("BB\r\n");
      out.write("CCC\r\n");
      out.write("</pre></div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"68\" value=\"d\"><pre>1 4 9</pre></div>\r\n");
      out.write("        </div>  \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">09</span>What does the following code print?\r\n");
      out.write("            <pre>\r\n");
      out.write("            fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]\r\n");
      out.write("            print fibonacci[1:3]\r\n");
      out.write("        </pre>\r\n");
      out.write("           </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"69\" value=\"a\"> [1, 1, 2, 3]</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"69\" value=\"b\">[1, 2, 3]</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"69\" value=\"c\">[1, 2]</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"69\" value=\"d\">[1, 1, 2]</div> \r\n");
      out.write("        </div> \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">10</span>What will be the output of code?\r\n");
      out.write("        <pre>\r\n");
      out.write("a={5,4}\r\n");
      out.write("b={1,2,4,5}\r\n");
      out.write("print a&lt;b\r\n");
      out.write("</pre>\r\n");
      out.write("</div>  \r\n");
      out.write("<div>a<input type=\"radio\" name=\"70\" value=\"a\"> {1,2}</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"70\" value=\"b\">True</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"70\" value=\"c\">False</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"70\" value=\"d\">Invalid operation</div> \r\n");
      out.write("    </div>       \r\n");
      out.write("            <input class=\"btn\" type=\"submit\">\r\n");
      out.write("        ");

            session.setAttribute("status", "true");
         
      out.write(" \r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
