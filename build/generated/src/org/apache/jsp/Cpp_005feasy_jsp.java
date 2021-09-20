package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Cpp_005feasy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>C++ Easy Question</title>\r\n");
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
      out.write("    <div >\r\n");
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
      out.write("                  <tr>\r\n");
      out.write("            \r\n");
      out.write("                <span id=\"display\" class=\"timer\"></span>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"submitted\"></div>          \r\n");
      out.write("            </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("         <script>\r\n");
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
      out.write("    <div style=\"visibility: hidden;\" id=\"question\">       \r\n");
      out.write("    <form action=\"get_easy_cpp.jsp\" method=\"POST\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>1.What is size of int data type in cpp?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"31\" value=\"a\">2 Bytes</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"31\" value=\"b\">4 Bytes</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"31\" value=\"c\">1 Byte</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"31\" value=\"d\">Depends on Compiler</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>2.What following operator is called \"?:\"</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"32\" value=\"a\"> Scope Resolution Operator</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"32\" value=\"b\">Conditional Operator</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"32\" value=\"c\">Ternary Operator</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"32\" value=\"d\">if else o/p</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>3.What is currect syntax of for loop?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"33\" value=\"a\">for(initialization;condition; increment/decrement)</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"33\" value=\"b\">for(increment/decrement; initialization; condition)</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"33\" value=\"c\">for(initialization, condition, increment/decrement</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"33\" value=\"d\">None of These</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>4.Can we overload functions in C++?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"34\" value=\"a\"> Yes</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"34\" value=\"b\">No</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"34\" value=\"c\">Compilation Error</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"34\" value=\"d\">Runtime Error</div>  \r\n");
      out.write("    </div>    \r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>5.Which operator has highest precedence in * / % ?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"35\" value=\"a\"> *</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"35\" value=\"b\"> /</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"35\" value=\"c\"> % </div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"35\" value=\"d\"> all have same precedence</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>6.What is the full form of oop</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"36\" value=\"a\">Object oriented programming</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"36\" value=\"b\">Oriented object programming</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"36\" value=\"c\">Office oriented programming</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"36\" value=\"d\">office objective programming</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>7.Can a Structure contain pointer to itself?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"37\" value=\"a\">Yes</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"37\" value=\"b\">No</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"37\" value=\"c\">Compilation Error</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"37\" value=\"d\">Runtime Error</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>8.What should be the location of \"using namespace std;\" in c++ code?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"38\" value=\"a\">Before all #include</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"38\" value=\"b\">After #include&lt;iostream&gt; </div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"38\" value=\"c\">In middle of #includes</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"38\" value=\"d\">After all #inludes</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">    \r\n");
      out.write("        <div>9.What do you understand by GUI?</div>\r\n");
      out.write(" <div>a<input type=\"radio\" name=\"39\" value=\"a\">Uses buttons, menus, and icons</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"39\" value=\"b\">Should be easy for a user to manipulate</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"39\" value=\"c\">Stands for Graphic Use Interaction</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"39\" value=\"d\"> Both A and B</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>10.A constructor is a special type of?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"40\" value=\"a\">class</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"40\" value=\"b\">field</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"40\" value=\"c\">function</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"40\" value=\"d\"> property</div>  \r\n");
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
