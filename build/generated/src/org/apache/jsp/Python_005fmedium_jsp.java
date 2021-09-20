package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Python_005fmedium_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>Python Medium Question</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"test.css\">\r\n");
      out.write("    </head>\r\n");
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
      out.write("        <tr>\r\n");
      out.write("            \r\n");
      out.write("                <span id=\"display\" class=\"timer\"></span>\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"submitted\"></div>          \r\n");
      out.write("            </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("        <!-- <div class=\"start\"><button class=\"btn\">Start</button></div> -->\r\n");
      out.write("     <script>\r\n");
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
      out.write("        <form action=\"get_medium_python.jsp\" method=\"POST\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">01</span>What does ~4 evaluate to?\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>a<input type=\"radio\"  name=\"71\" value=\"a\">-5</div>\r\n");
      out.write("        <div>b<input type=\"radio\"  name=\"71\" value=\"b\"> -4</div>\r\n");
      out.write("        <div>c<input type=\"radio\"  name=\"71\" value=\"c\">-3</div>\r\n");
      out.write("        <div>d<input type=\"radio\"  name=\"71\" value=\"d\">+3</div> \r\n");
      out.write("        </div>\r\n");
      out.write("         <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">02</span>What does ~~~~~~5 evaluate to? </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"72\" value=\"a\">+5</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"72\" value=\"b\">-11</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"72\" value=\"c\">+11</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"72\" value=\"d\">-5</div> \r\n");
      out.write("        </div>  \r\n");
      out.write("         <div class=\"container\">      \r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">03</span>What is the result of round(0.5) â round(-0.5)? </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"73\" value=\"a\">1.0</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"73\" value=\"b\">2.0</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"73\" value=\"c\">0.0</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"73\" value=\"d\">None of the mentioned</div> \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">04</span>What will be the output of above code?\r\n");
      out.write("<pre>\r\n");
      out.write("import copy\r\n");
      out.write("a=[10,23,56,[78]]\r\n");
      out.write("b=copy.deepcopy(a)\r\n");
      out.write("a[3][0]=95\r\n");
      out.write("a[1]=34\r\n");
      out.write("print(b)   \r\n");
      out.write("</pre></div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"74\" value=\"a\">[10,34,56,[95]].</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"74\" value=\"b\">[10,23,56,[78]]</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"74\" value=\"c\">[10,23,56,[95]]</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"74\" value=\"d\">[10,34,56,[78]]</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">05</span>What will be the output?\r\n");
      out.write("<pre>\r\n");
      out.write("values = [[3, 4, 5, 1], [33, 6, 1, 2]]\r\n");
      out.write("    \r\n");
      out.write("v = values[0][0]\r\n");
      out.write("for lst in values:\r\n");
      out.write("    for element in lst:\r\n");
      out.write("        if v > element:\r\n");
      out.write("            v = element\r\n");
      out.write("    \r\n");
      out.write("print(v)\r\n");
      out.write("</pre> </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"75\" value=\"a\">1</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"75\" value=\"b\">3</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"75\" value=\"c\">5</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"75\" value=\"d\">6</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">06</span>What will be the output of the code?\r\n");
      out.write("<pre>\r\n");
      out.write("print(min(max(False,-3,-4), 2,7))\r\n");
      out.write("</pre>\r\n");
      out.write("</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"76\" value=\"a\">2</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"76\" value=\"b\">False</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"76\" value=\"c\">-3</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"76\" value=\"d\">-4</div> \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">07</span>What will be the output of code\r\n");
      out.write("<pre>\r\n");
      out.write("L = [lambda x: x ** 2,lambda x: x ** 3,lambda x: x ** 4]\r\n");
      out.write("for f in L:\r\n");
      out.write("    print(f(3),end=\" \")\r\n");
      out.write("</pre></div>\r\n");
      out.write("\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"77\" value=\"a\">27 81 343</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"77\" value=\"b\"> 6 9 12 </div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"77\" value=\"c\">9 27 81</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"77\" value=\"d\">None of the mentioned </div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">08</span>What will be the output</div>\r\n");
      out.write("        <pre>\r\n");
      out.write("def change(i = 1, j = 2):\r\n");
      out.write("    i = i + j\r\n");
      out.write("    j = j + 1\r\n");
      out.write("    print(i, j)\r\n");
      out.write("change(j = 1, i = 2)</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"78\" value=\"a\">An exception is thrown because of\r\n");
      out.write("            conflicting values</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"78\" value=\"b\">1 2</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"78\" value=\"c\">3 3</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"78\" value=\"d\">3 2</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">09</span>What will be the Ouput of following code?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("def foo(i, x=[]):\r\n");
      out.write("    x.append(x.append(i))\r\n");
      out.write("    return x\r\n");
      out.write("    for i in range(3):\r\n");
      out.write("        y = foo(i)\r\n");
      out.write("    print(y)\r\n");
      out.write("</pre>\r\n");
      out.write("       <div>a<input type=\"radio\" name=\"79\" value=\"a\">[[[0]], [[[0]], [1]], [[[0]], [[[0]], [1]], [2]]]</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"79\" value=\"b\">[[0], [[0], 1], [[0], [[0], 1], 2]]</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"79\" value=\"c\">[0, None, 1, None, 2, None]</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"79\" value=\"d\">[[[0]], [[[0]], [1]], [[[0]], [[[0]], [1]], [2]]]</div>  \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div class=\"question\"><span class=\"dot\">10</span>What will be the output of the following Python code?\r\n");
      out.write("<pre>\r\n");
      out.write("import collections\r\n");
      out.write("a=dict()\r\n");
      out.write("a=collections.defaultdict(str)\r\n");
      out.write("print(a['A'])\r\n");
      out.write("</pre>\r\n");
      out.write(" </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"80\" value=\"a\">An exception is thrown since the dictionary\r\n");
      out.write("            is empty</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"80\" value=\"b\">â â</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"80\" value=\"c\">âAâ</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"80\" value=\"d\">0</div>  \r\n");
      out.write("        </div>        \r\n");
      out.write("                <button class=\"btn\" value=\"submit\">Submit</button>\r\n");
      out.write("    </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("function openNav() {\r\n");
      out.write("  document.getElementById(\"mySidebar\").style.width = \"250px\";\r\n");
      out.write("  document.getElementById(\"main\").style.marginLeft = \"250px\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("function closeNav() {\r\n");
      out.write("  document.getElementById(\"mySidebar\").style.width = \"0\";\r\n");
      out.write("  document.getElementById(\"main\").style.marginLeft= \"0\";\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
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
