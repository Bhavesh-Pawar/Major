package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Python_005fdifficult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("?<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Python Difficult Question</title>\r\n");
      out.write("    <script>\r\n");
      out.write("        \r\n");
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
      out.write("        document.onkeydown = function(e) \r\n");
      out.write("        {\r\n");
      out.write("if(event.keyCode == 123) {\r\n");
      out.write("return false;\r\n");
      out.write("}\r\n");
      out.write("if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){\r\n");
      out.write("return false;\r\n");
      out.write("}\r\n");
      out.write("if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){\r\n");
      out.write("return false;\r\n");
      out.write("}\r\n");
      out.write("if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){\r\n");
      out.write("return false;\r\n");
      out.write("}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("window.addEventListener('contextmenu', function (e) { \r\n");
      out.write("  // do something here... \r\n");
      out.write("  e.preventDefault(); \r\n");
      out.write("}, false);\r\n");
      out.write("    </script>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"test.css\">\r\n");
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
      out.write("            </table>\r\n");
      out.write("    <form action=\"get_difficult_python.jsp\" method=\"POST\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("      \r\n");
      out.write("        <div>1.Forcing a variable type to become another type before accessing an appropriate function is called\r\n");
      out.write("</div>\r\n");
      out.write("        <div>a<input type=\"radio\"  name=\"81\" value=\"a\">regression</div>\r\n");
      out.write("        <div>b<input type=\"radio\"  name=\"81\" value=\"b\">recursion</div>\r\n");
      out.write("        <div>c<input type=\"radio\"  name=\"81\" value=\"c\">conversion</div>\r\n");
      out.write("        <div>d<input type=\"radio\"  name=\"81\" value=\"d\">coersion</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>2.Which sorting algorithm is used in python?</div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"82\" value=\"a\">Shell Sort</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"82\" value=\"b\">Quick Sort</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"82\" value=\"c\">Merge Sort</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"82\" value=\"d\">None of these</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>3. What will be the output of the following code?\r\n");
      out.write("<pre>\r\n");
      out.write("    class A:\r\n");
      out.write("\r\n");
      out.write("    def __init__(self):\r\n");
      out.write("\r\n");
      out.write("        self.count=5\r\n");
      out.write("\r\n");
      out.write("        self.count=count+1\r\n");
      out.write("\r\n");
      out.write("a=A()\r\n");
      out.write("\r\n");
      out.write("print(a.count)\r\n");
      out.write("</pre>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"83\" value=\"a\"> 5</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"83\" value=\"b\">6</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"83\" value=\"c\">0</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"83\" value=\"d\">Error</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>4. What will be the output of the following Python code if the system date is 18th June, 2017 (Sunday)?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("tday=datetime.date.today()\r\n");
      out.write("print(tday.weekday())      \r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"84\" value=\"a\">6</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"84\" value=\"b\">1</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"84\" value=\"c\">0</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"84\" value=\"d\">7</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>5. What will be the output of the following code snippet?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("    class Person:\r\n");
      out.write("    def __init__(self, id):\r\n");
      out.write("        self.id = id\r\n");
      out.write("sam = Person(100)\r\n");
      out.write("sam.__dict__['age'] = 49\r\n");
      out.write("print (sam.age + len(sam.__dict__))\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"85\" value=\"a\">1</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"85\" value=\"b\">2</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"85\" value=\"c\">49</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"85\" value=\"d\">50</div>  \r\n");
      out.write("        <div>e<input type=\"radio\" name=\"85\" value=\"e\">51</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>6.\r\n");
      out.write("<pre>\r\n");
      out.write("class A:\r\n");
      out.write("    def __init__(self, i = 0):\r\n");
      out.write("        self.i = i\r\n");
      out.write("\r\n");
      out.write("class B(A):\r\n");
      out.write("    def __init__(self, j = 0):\r\n");
      out.write("        self.j = j\r\n");
      out.write("\r\n");
      out.write("def main():\r\n");
      out.write("    b = B()\r\n");
      out.write("    print(b.i)\r\n");
      out.write("    print(b.j)\r\n");
      out.write("\r\n");
      out.write("main()\r\n");
      out.write("</pre>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"86\" value=\"a\">Class B inherits A, but the data field ?i? in A is not inherited.</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"86\" value=\"b\">Class B inherits A, thus automatically inherits all data fields in A.</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"86\" value=\"c\">When you create an object of B, you have to pass an argument such as B(5).</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"86\" value=\"d\">The data field ?j? cannot be accessed by object b.</div>  \r\n");
      out.write("    </div> \r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>7.What will be the output of the following code snippet?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("class A:\r\n");
      out.write("    def __init__(self):\r\n");
      out.write("        self.calcI(30)\r\n");
      out.write("        print(\"i from A is\", self.i)\r\n");
      out.write("\r\n");
      out.write("    def calcI(self, i):\r\n");
      out.write("        self.i = 2 * i;\r\n");
      out.write("\r\n");
      out.write("class B(A):\r\n");
      out.write("    def __init__(self):\r\n");
      out.write("        super().__init__()\r\n");
      out.write("        \r\n");
      out.write("    def calcI(self, i):\r\n");
      out.write("        self.i = 3 * i;\r\n");
      out.write("\r\n");
      out.write("b = B()\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"87\" value=\"a\">The __init__ method of only class B gets invoked.</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"87\" value=\"b\">The __init__ method of class A gets invoked and it displays ?i from A is 0?</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"87\" value=\"c\">The __init__ method of class A gets invoked and it displays ?i from A is 60?</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"87\" value=\"d\">The __init__ method of class A gets invoked and it displays ?i from A is 90?</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>8. Which of the following statements incorrectly define pickling in python?</div>\r\n");
      out.write("\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"88\" value=\"a\"> It is a process to convert a Python object into a byte stream.</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"88\" value=\"b\">It is a process to convert a byte stream to Python object</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"88\" value=\"c\">It is done using two methods dump and load.</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"88\" value=\"d\">Serialization is an alternate name for pickling.    </div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>9.What is the output of the code shown below?\r\n");
      out.write("<pre>\r\n");
      out.write("def f(x):\r\n");
      out.write("    yield x+1\r\n");
      out.write("    print(\"test\")\r\n");
      out.write("    yield x+2\r\n");
      out.write("g=f(9)\r\n");
      out.write("</pre> </div>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"89\" value=\"a\">Error</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"89\" value=\"b\"> test</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"89\" value=\"c\">test1012</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"89\" value=\"d\">No output</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>10.What will be the ouput of following code?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("def multipliers():\r\n");
      out.write("    return [lambda x : i * x for i in range(4)]\r\n");
      out.write("      \r\n");
      out.write("print([m(2) for m in multipliers()])\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a<input type=\"radio\" name=\"90\" value=\"a\">[2,2,2,2]</div>\r\n");
      out.write("        <div>b<input type=\"radio\" name=\"90\" value=\"b\">[0,2,4,6]</div>\r\n");
      out.write("        <div>c<input type=\"radio\" name=\"90\" value=\"c\">[6,6,6,6]</div>\r\n");
      out.write("        <div>d<input type=\"radio\" name=\"90\" value=\"d\">None of the above</div>  \r\n");
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
