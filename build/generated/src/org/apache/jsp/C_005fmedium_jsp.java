package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class C_005fmedium_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>C Medium Question</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"test.css\">\r\n");
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
      out.write("                 window.history.forward(); \r\n");
      out.write("                function noBack() { \r\n");
      out.write("                    window.history.forward(); \r\n");
      out.write("                } \r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("<body background=\"images/bg1.jpg\">\r\n");
      out.write("    <div id=\"mySidebar\" class=\"sidebar\">\r\n");
      out.write("        <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\"><img src=\"images/close.png\"width=\"30px\"height=\"30px\"></a>\r\n");
      out.write("        <a href=\"#\">Profile</a>\r\n");
      out.write("        <a href=\"#\">Services</a>\r\n");
      out.write("        <a href=\"#\">Clients</a>\r\n");
      out.write("        <a href=\"#\">About</a>\r\n");
      out.write("    </div>\r\n");
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
      out.write("    <form action=\"get_medium_c.jsp\" method=\"POST\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>1.What will be the output of the following statement ?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("printf( 3 + \"goodbye\");\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"11\" value=\"a\">goodbye</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"11\" value=\"b\">odbye</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"11\" value=\"c\">bye</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"11\" value=\"d\">dbye</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>2.What will be the output of following statements ?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("char x[] = \"hello hi\"; printf(\"%d%d\",sizeof(*x),sizeof(x));\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"12\" value=\"a\">88</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"12\" value=\"b\">18</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"12\" value=\"c\">29</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"12\" value=\"d\">19</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>3. What is the output?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("#include\r\n");
      out.write("main()\r\n");
      out.write("{\r\n");
      out.write("char str[]=\"S\\065AB\";\r\n");
      out.write("printf(\"\\n%d\", sizeof(str));\r\n");
      out.write("}\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"13\" value=\"a\"> 7</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"13\" value=\"b\">6</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"13\" value=\"c\">5 </div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"13\" value=\"d\">error</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>4.What is a lint?</div>      \r\n");
      out.write("        <div>a<input type=\"radio\" name=\"14\" value=\"a\"> C compiler</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"14\" value=\"b\">Interactive debugger</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"14\" value=\"c\">Analyzing tool</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"14\" value=\"d\">C interpreter</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>5.The maximum length of a variable in C is ___</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"15\" value=\"a\"> 8</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"15\" value=\"b\">16</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"15\" value=\"c\"> 32</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"5\" value=\"d\">64</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>6.p++ executes faster than p+1 because</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"16\" value=\"a\">p uses registers</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"16\" value=\"b\">p++ is a single instruction</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"16\" value=\"c\">++ is faster than +</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"16\" value=\"d\">None of these</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>7.The printf() function returns which value when an error occurs?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"17\" value=\"a\"> Positive value</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"17\" value=\"b\"> Zero</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"17\" value=\"c\">Negative value</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"17\" value=\"d\">None of these</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>8.The meaning of conversion character for data input is</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"18\" value=\"a\"> Data item is a long integer</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"18\" value=\"b\"> Data item is an unsigned decimal integer</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"18\" value=\"c\"> Data item is a short integer</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"18\" value=\"d\">None of the above</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>9.A âswitchâ statement is used to:</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"19\" value=\"a\">Switch between user-defined functions in a program</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"19\" value=\"b\">Switch from one variable to another variable</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"19\" value=\"c\">Jump from one place to another in a program.</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"19\" value=\"d\">None of these.</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">|\r\n");
      out.write("        <div>10.If you want to exchange two rows in a two-dimensional array, the fastest way is to:            </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"20\" value=\"a\">Exchange the elements of the 2rows</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"20\" value=\"b\">Exchange the address of each element in the two-row</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"20\" value=\"c\">Silence the address of the rows in an array of the pointer and exchange the pointer</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"20\" value=\"d\">None of these.</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("        <input type=\"submit\">\r\n");
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
