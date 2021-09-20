package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class C_005feasy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>C Easy Question</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"test.css\">  \r\n");
      out.write("    <style>\r\n");
      out.write("        \r\n");
      out.write("  </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body background=\"images/bg1.jpg\" >\r\n");
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
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("            \r\n");
      out.write("                <span id=\"display\" class=\"timer\"></span>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"submitted\"></div>          \r\n");
      out.write("            </tr>\r\n");
      out.write("            </table>\r\n");
      out.write("    <script>\r\n");
      out.write("        function openNav() {\r\n");
      out.write("  document.getElementById(\"mySidebar\").style.width = \"250px\";\r\n");
      out.write("  document.getElementById(\"main\").style.marginLeft = \"250px\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function closeNav() {\r\n");
      out.write("  document.getElementById(\"mySidebar\").style.width = \"0\";\r\n");
      out.write("  document.getElementById(\"main\").style.marginLeft= \"0\";\r\n");
      out.write("}\r\n");
      out.write("         window.history.forward(); \r\n");
      out.write("        function noBack() { \r\n");
      out.write("            window.history.forward(); \r\n");
      out.write("        } \r\n");
      out.write("</script>\r\n");
      out.write("<script>\r\n");
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
      out.write("        <form action=\"get_easy_c.jsp\" name=\"C\" id=\"C\" method=\"POST\">\r\n");
      out.write("           \r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("               \r\n");
      out.write("                <div>1. C is invented in which year ?</div>\r\n");
      out.write("                <div>a<input type=\"radio\"  name=\"1\" value=\"a\"> 1971</div>\r\n");
      out.write("                <div>b<input type=\"radio\"  name=\"1\" value=\"b\">1972</div>\r\n");
      out.write("                <div>c<input type=\"radio\"  name=\"1\" value=\"c\">1973</div>\r\n");
      out.write("                <div>d<input type=\"radio\"  name=\"1\" value=\"d\">1970</div>  \r\n");
      out.write("            </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>2.The format identifier %i is also used for _____ data type?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"2\" value=\"a\">char</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"2\" value=\"b\">int</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"2\" value=\"c\">float</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"2\" value=\"d\">double</div>  \r\n");
      out.write("    </div>        \r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div>3.What is the size of an int data type?</div>\r\n");
      out.write("            <div>a<input type=\"radio\" name=\"3\" value=\"a\">4 Bytes</div>\r\n");
      out.write("            <div>b<input type=\"radio\" name=\"3\" value=\"b\">8 Bytes</div>\r\n");
      out.write("            <div>c<input type=\"radio\" name=\"3\" value=\"c\"> Depends on the system/compiler</div>\r\n");
      out.write("            <div>d<input type=\"radio\" name=\"3\" value=\"d\">Cannot be determined</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>4.Who is father of C Language? </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"4\" value=\"a\"> Bjarne Stroustrup</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"4\" value=\"b\">Dennis Ritchie</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"4\" value=\"c\"> James A. Gosling</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"4\" value=\"d\">Dr. E.F. Codd</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>5.Which of the following shows the correct hierarchy of arithmetic operations in C\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"5\" value=\"a\">/ + * -</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"5\" value=\"b\">* - / +</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"5\" value=\"c\">+ - / *</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"5\" value=\"d\"> * / + -</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>6.The Default Parameter Passing Mechanism is called as </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"6\" value=\"a\">Call by Value</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"6\" value=\"b\">Call by Reference</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"6\" value=\"c\"> Call by Address</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"6\" value=\"d\">Call by Name</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>7.In switch statement, each case instance value must be _______? </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"7\" value=\"a\">Constant</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"7\" value=\"b\">Variable</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"7\" value=\"c\">Special Symbol</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"7\" value=\"d\">None of the avobe</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("            <div>8.What is the right way to access value of structure variable book{ price, page }?</div>\r\n");
      out.write("            <div>a<input type=\"radio\" name=\"8\" value=\"a\">printf(\"%d%d\", book.price, book.page);</div>\r\n");
      out.write("            <div>b<input type=\"radio\" name=\"8\" value=\"b\">printf(\"%d%d\", price.book, page.book);</div>\r\n");
      out.write("            <div>c<input type=\"radio\" name=\"8\" value=\"c\">printf(\"%d%d\", price::book, page::book);</div>\r\n");
      out.write("            <div>d<input type=\"radio\" name=\"8\" value=\"d\">printf(\"%d%d\", price->book, page->book);</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div>9. What will be the value of `a` after the following code is executed\r\n");
      out.write("<pre>\r\n");
      out.write("#define square(x) x*x\r\n");
      out.write("a = square(2+3)\r\n");
      out.write("</pre></div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"9\" value=\"a\">25</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"9\" value=\"b\">13</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"9\" value=\"c\"> 11</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"9\" value=\"d\">10</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>10.The keyword break cannot be simply used within:\r\n");
      out.write("            </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"10\" value=\"a\">do-while</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"10\" value=\"b\">if-else</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"10\" value=\"c\"> for</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"10\" value=\"d\">while</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("            <input class=\"btn\" type=\"submit\">\r\n");
      out.write("        ");

            session.setAttribute("status", "true");
         
      out.write("   \r\n");
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
