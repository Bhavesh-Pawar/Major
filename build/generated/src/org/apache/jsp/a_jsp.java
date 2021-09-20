package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import p1.DBConnection;
import java.util.Enumeration;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class a_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

 
Enumeration en=null;
 int  count;
   
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("   \n");

      
try{
    DBConnection obj= new DBConnection();
connection = obj.getConnection();
statement=connection.createStatement();
System.out.println("Success");
String sql ="select * from python";
count=0;
en=request.getParameterNames();
resultSet = statement.executeQuery(sql);
while(resultSet.next() && en.hasMoreElements()){

        if(resultSet.getString("medium").equals(request.getParameter((String)en.nextElement())))
        {count++;}
}
connection.close();
} catch (Exception e) 
{
e.printStackTrace();
}

if(request.getMethod().equalsIgnoreCase("POST")) 
  
      out.write("\n");
      out.write("  ");
      if (true) {
        _jspx_page_context.forward("result.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("result", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count}", java.lang.String.class, (PageContext)_jspx_page_context, null), request.getCharacterEncoding()));
        return;
      }
      out.write("\n");
      out.write("  ");


      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Python Easy Question</title>\n");
      out.write("    <script>\n");
      out.write("        document.onkeydown = function(e) \n");
      out.write("        {\n");
      out.write("if(event.keyCode == 123) {\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){\n");
      out.write("return false;\n");
      out.write("}\n");
      out.write("}\n");
      out.write("\n");
      out.write("window.addEventListener('contextmenu', function (e) { \n");
      out.write("  // do something here... \n");
      out.write("  e.preventDefault(); \n");
      out.write("}, false);\n");
      out.write("    </script>\n");
      out.write("    <style>\n");
      out.write("        *\n");
      out.write("        {\n");
      out.write("            user-select: none;\n");
      out.write("            font-size: 25px;\n");
      out.write("        }\n");
      out.write("        input\n");
      out.write("        {\n");
      out.write("            font-size: 15px;\n");
      out.write("            padding: 10px 10px;\n");
      out.write("            margin: 10px 10px;\n");
      out.write("        }\n");
      out.write("       input[type=\"submit\"]:hover\n");
      out.write("       {\n");
      out.write("           border-color: white;\n");
      out.write("           border-radius: 25px;\n");
      out.write("           background-color: rgb(247, 243, 243);\n");
      out.write("           color: rgb(14, 194, 149);\n");
      out.write("       }\n");
      out.write("    </style>\n");
      out.write("    <script>\n");
      out.write("\n");
      out.write("         window.history.forward(); \n");
      out.write("        function noBack() { \n");
      out.write("            window.history.forward(); \n");
      out.write("        } \n");
      out.write("\n");
      out.write("</script>\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"noBack()\">\n");
      out.write("    \n");
      out.write("    <div>\n");
      out.write("        <form action=\"a.jsp\" method=\"POST\">\n");
      out.write("        <div>1.Is Python case sensitive when dealing with identifiers?</div>\n");
      out.write("        <div><input type=\"radio\"  name=\"1\" value=\"a\"> yes</div>\n");
      out.write("        <div><input type=\"radio\"  name=\"1\" value=\"b\">no</div>\n");
      out.write("        <div><input type=\"radio\"  name=\"1\" value=\"c\">machine dependent</div>\n");
      out.write("        <div><input type=\"radio\"  name=\"1\" value=\"d\"> none of the mentioned</div>  \n");
      out.write("        <hr>\n");
      out.write("        <div>2.What is the maximum possible length of an identifier?</div>\n");
      out.write("           \n");
      out.write("        <div>a<input type=\"radio\" name=\"2\" value=\"a\">31 characters</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"2\" value=\"b\">63 characters</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"2\" value=\"c\">79 characters</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"2\" value=\"d\">none of the mentioned</div>  \n");
      out.write("        <hr>        \n");
      out.write("        <div>3.Which of the following is invalid? </div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"3\" value=\"a\">_a = 1</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"3\" value=\"b\">__a = 1</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"3\" value=\"c\">__str__ = 1</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"3\" value=\"d\">none of the mentioned</div>  \n");
      out.write("        <hr> \n");
      out.write("        <div>4.All keywords in Python are in _________  </div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"4\" value=\"a\"> lower case</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"4\" value=\"b\">UPPER CASE</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"4\" value=\"c\"> Capitalized</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"4\" value=\"d\">None of the mentioned</div>  \n");
      out.write("        <hr> \n");
      out.write("        <div>5.What is the output of print 0.1 + 0.2 == 0.3?</div>\n");
      out.write("     <div>a<input type=\"radio\" name=\"5\" value=\"a\">True</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"5\" value=\"b\">False</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"5\" value=\"c\">Machine dependent</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"5\" value=\"d\">Error</div>  \n");
      out.write("        <hr> \n");
      out.write("        <div>6.Which of the following is not a complex number</div>\n");
      out.write("       \n");
      out.write("        <div>a<input type=\"radio\" name=\"6\" value=\"a\">k = 2 + 3j</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"6\" value=\"b\">k = complex(2, 3)</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"6\" value=\"c\">k = 2 + 3l</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"6\" value=\"d\">k = 2 + 3J</div>  \n");
      out.write("        <hr> \n");
      out.write("        <div>7.What is the type of inf</div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"7\" value=\"a\">Boolean</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"7\" value=\"b\"> Integer</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"7\" value=\"c\">Float</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"7\" value=\"d\">Complex</div>  \n");
      out.write("        <hr> \n");
      out.write("        <div>8. What will be the output of the following code? \n");
      out.write("<pre>s = 'ABC'\n");
      out.write("    n = 1\n");
      out.write("    for c in s:\n");
      out.write("        print c * n,\n");
      out.write("        n += 1\n");
      out.write("</pre></div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"8\" value=\"a\">\n");
      out.write("<pre>\n");
      out.write("A\n");
      out.write("B\n");
      out.write("C\n");
      out.write("</pre>\n");
      out.write("        </div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"8\" value=\"b\"> <pre> A B C</pre></div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"8\" value=\"c\">\n");
      out.write("<pre>\n");
      out.write("A\n");
      out.write("BB\n");
      out.write("CCC\n");
      out.write("</pre></div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"8\" value=\"d\"><pre>1 4 9</pre></div>  \n");
      out.write("        <hr> \n");
      out.write("        <div>9.What does the following code print?\n");
      out.write("            <pre>\n");
      out.write("            fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]\n");
      out.write("            print fibonacci[1:3]\n");
      out.write("        </pre>\n");
      out.write("           </div>\n");
      out.write("        <div>a<input type=\"radio\" name=\"9\" value=\"a\"> [1, 1, 2, 3]</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"9\" value=\"b\">[1, 2, 3]</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"9\" value=\"c\">[1, 2]</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"9\" value=\"d\">[1, 1, 2]</div>  \n");
      out.write("        <hr> \n");
      out.write("        <div>10.What will be the ouput of code?\n");
      out.write("        <pre>\n");
      out.write("a={5,4}\n");
      out.write("b={1,2,4,5}\n");
      out.write("print a&lt;b\n");
      out.write("</pre>\n");
      out.write("</div>  \n");
      out.write("<div>a<input type=\"radio\" name=\"10\" value=\"a\"> {1,2}</div>\n");
      out.write("        <div>b<input type=\"radio\" name=\"10\" value=\"b\">True</div>\n");
      out.write("        <div>c<input type=\"radio\" name=\"10\" value=\"c\">False</div>\n");
      out.write("        <div>d<input type=\"radio\" name=\"10\" value=\"d\">Invalid operation</div> \n");
      out.write("        <hr>\n");
      out.write("        <input type=\"submit\">\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
