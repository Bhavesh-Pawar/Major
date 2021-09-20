package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Cpp_005fmedium_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>C++ Medium Question</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"test.css\">\r\n");
      out.write("    <script>\r\n");
      out.write(" function openNav() {\r\n");
      out.write("          document.getElementById(\"mySidebar\").style.width = \"250px\";\r\n");
      out.write("          document.getElementById(\"main\").style.marginLeft = \"250px\";\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        function closeNav() {\r\n");
      out.write("          document.getElementById(\"mySidebar\").style.width = \"0\";\r\n");
      out.write("          document.getElementById(\"main\").style.marginLeft= \"0\";\r\n");
      out.write("        }\r\n");
      out.write("        window.history.forward(); \r\n");
      out.write("       function noBack() { \r\n");
      out.write("           window.history.forward(); \r\n");
      out.write("       } \r\n");
      out.write("</script>\r\n");
      out.write("    </head>\r\n");
      out.write("<body background=\"images/bg1.jpg\">\r\n");
      out.write("    <div>\r\n");
      out.write("        <div id=\"mySidebar\" class=\"sidebar\">\r\n");
      out.write("            <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\"><img src=\"images/close.png\"width=\"30px\"height=\"30px\"></a>\r\n");
      out.write("            <a href=\"#\">Profile</a>\r\n");
      out.write("            <a href=\"#\">Services</a>\r\n");
      out.write("            <a href=\"#\">Clients</a>\r\n");
      out.write("            <a href=\"#\">About</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\r\n");
      out.write("            <tr align=\"center\">\r\n");
      out.write("                 <td><button class=\"openbtn\" onclick=\"openNav()\"><img src=\"images/hamburger.png\"width=\"50px\"height=\"50px\"></button><td>  \r\n");
      out.write("    \r\n");
      out.write("                <td><img src=\"images/logo.png\"width=\"150px\"height=\"150px\"></td>\r\n");
      out.write("                <td class=\"titletheme\">Test Your Skills</td>\r\n");
      out.write("                 </tr>\r\n");
      out.write("                 <tr>\r\n");
      out.write("            \r\n");
      out.write("                <span id=\"display\" class=\"timer\"></span>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"submitted\"></div>          \r\n");
      out.write("            </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("        <script>\r\n");
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
      out.write("    <form action=\"get_medium_cpp.jsp\" method=\"POST\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>1.What will be the output of the i and j ? </div>\r\n");
      out.write("<pre>\r\n");
      out.write("    int i=5,j;\r\n");
      out.write("    j= ++i + ++i;\r\n");
      out.write("</pre>\r\n");
      out.write("       <div>a<input type=\"radio\" name=\"41\" value=\"a\">i=7 j=12</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"41\" value=\"b\">i=7 j=13</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"41\" value=\"c\">i=7 j=14</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"41\" value=\"d\">None of these</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>2.Delaration a pointer more than once may cause ____</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"42\" value=\"a\">Error</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"42\" value=\"b\">Abort</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"42\" value=\"c\">Trap</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"42\" value=\"d\">Null</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>3.In CPP, members of a class are ______ by default.</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"43\" value=\"a\">Public</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"43\" value=\"b\">Private</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"43\" value=\"c\">Protected</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"43\" value=\"d\">Static</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>4.Which classes allow primitive types to be accessed as objects?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"44\" value=\"a\">Storage</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"44\" value=\"b\">Virtual</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"44\" value=\"c\">Friend</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"44\" value=\"d\">Wrapper</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>5.When is std::bad_alloc exception thrown?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"45\" value=\"a\">When new operator cannot allocate memory</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"45\" value=\"b\">When alloc function fails</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"45\" value=\"c\">When type requested for new operation is considered bad, thisexception is thrown</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"45\" value=\"d\">When delete operator cannot delete the allocated (corrupted) object</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>6.Which of the following keyword supports dynamic method resolution?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"46\" value=\"a\">abstract</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"46\" value=\"b\">Virtual</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"46\" value=\"c\">Dynamic</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"46\" value=\"d\">Typeid</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>7.Which one of the following is not a fundamental data type in C++ </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"47\" value=\"a\"> float</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"47\" value=\"b\">string</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"47\" value=\"c\">int</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"47\" value=\"d\">wchar_t</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\"> \r\n");
      out.write("        <div>8.The programming language that has the ability to create new data types is called___.</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"48\" value=\"a\"> Overloaded</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"48\" value=\"b\">Encapsulated</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"48\" value=\"c\">Reprehensible</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"48\" value=\"d\">Extensible</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>9.Which of the following is not a valid conditional inclusions in\r\n");
      out.write("            preprocessor directives </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"49\" value=\"a\">#ifdef</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"49\" value=\"b\">#ifundef</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"49\" value=\"c\">#endif</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"49\" value=\"d\">#elif</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>10.The output of this program is \r\n");
      out.write("<pre>\r\n");
      out.write("    int a = 10;\r\n");
      out.write("    void main()\r\n");
      out.write("    {\r\n");
      out.write("     int a = 20;\r\n");
      out.write("     cout << a << ::a;\r\n");
      out.write("    }\r\n");
      out.write("</pre> </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"50\" value=\"a\">Syntax error</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"50\" value=\"b\"> 10 20</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"50\" value=\"c\"> 20 10</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"50\" value=\"d\">20 20</div>  \r\n");
      out.write("         </div>\r\n");
      out.write("        <input class=\"btn\" type=\"submit\">\r\n");
      out.write("        ");

            session.setAttribute("status", "true");
         
      out.write(" \r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
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
