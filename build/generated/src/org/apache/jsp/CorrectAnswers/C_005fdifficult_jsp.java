package org.apache.jsp.CorrectAnswers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class C_005fdifficult_jsp extends org.apache.jasper.runtime.HttpJspBase
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
        response.sendRedirect("../sign_in.html");
    }

      out.write(" \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>C Difficult Question</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"./test.css\">\r\n");
      out.write("    <script>\r\n");
      out.write("        \r\n");
      out.write("                 window.history.forward(); \r\n");
      out.write("                function noBack() { \r\n");
      out.write("                    window.history.forward(); \r\n");
      out.write("                } \r\n");
      out.write("                window.history.forward(); \r\n");
      out.write("        function noBack() { \r\n");
      out.write("            window.history.forward(); \r\n");
      out.write("        } \r\n");
      out.write("        </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body background=\"../images/bg1.jpg\">\r\n");
      out.write("    <div >\r\n");
      out.write("       \r\n");
      out.write("        <table style=\"width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7\">\r\n");
      out.write("            <tr align=\"center\">\r\n");
      out.write("                \r\n");
      out.write("    \r\n");
      out.write("                <td><img src=\"../images/logo.png\"width=\"150px\"height=\"150px\"></td>\r\n");
      out.write("                <td class=\"titletheme\">Test Your Skills</td>\r\n");
      out.write("                <td class=\"button button4\"><a href=\"../index.jsp\">Go to index page </a> </td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            \r\n");
      out.write("            </table>\r\n");
      out.write("        <div class=\"correct\"> <h1> Correct Answers: C_Difficult</h1> </div>\r\n");
      out.write("    <div id=\"question\"> \r\n");
      out.write("             <div class=\"container\">\r\n");
      out.write("            <div>1.What type of array is generally generated in Command-line argument?</div>\r\n");
      out.write("            <div>b. Jagged Array</div>      \r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        <div>2.What will be output of the following program  if argument passed to command lines are  :\r\n");
      out.write("             Paper Ink Pen\r\n");
      out.write("<pre>\r\n");
      out.write("\r\n");
      out.write("int main(int argc, char ** argv){\r\n");
      out.write(" char **items;\r\n");
      out.write(" int j = 3, i;\r\n");
      out.write(" items = argv;\r\n");
      out.write(" for(i = 1; (i%4); i++){\r\n");
      out.write("  int **p = &items[j];\r\n");
      out.write("  printf(\"%c\", **p);\r\n");
      out.write("  j--;\r\n");
      out.write(" }\r\n");
      out.write(" return 0;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</pre></div>\r\n");
      out.write("\r\n");
      out.write("        <div>a. PIP </div>\r\n");
      out.write("        \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>3.What does the following declaration mean? </div>\r\n");
      out.write("<pre>\r\n");
      out.write("int (*ptr)[10];\r\n");
      out.write("</pre>            \r\n");
      out.write("        \r\n");
      out.write("        <div>b. ptr is a pointer to an array of 10 integers</div>\r\n");
      out.write("       \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>4.Which of the following are two types of branching?</div>\r\n");
      out.write("        <div>c. Multi-way & three way</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>5.A structure declaration without any variables describe ____</div>\r\n");
      out.write("       <div>b. Template</div>  \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>6. How many times the below loop will be executed?\r\n");
      out.write(" </div>\r\n");
      out.write("        \r\n");
      out.write("<pre>                  \r\n");
      out.write("int main()\r\n");
      out.write("{\r\n");
      out.write(" int x, y;\r\n");
      out.write(" for(x=5;x>=1;x--)\r\n");
      out.write(" {\r\n");
      out.write("  for(y=1;y<=x;y++)\r\n");
      out.write("   printf(\"%d\\n\",y);\r\n");
      out.write(" }\r\n");
      out.write("}\r\n");
      out.write("</pre>  \r\n");
      out.write("        <div>a. 15</div> \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>7.Guess the output?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("#include <stdio.h>\r\n");
      out.write("    void main()\r\n");
      out.write("    {\r\n");
      out.write("        char *a[10] = {\"hi\", \"hello\", \"how\"};\r\n");
      out.write("        int i = 0, j = 0;\r\n");
      out.write("        a[0] = \"hey\";\r\n");
      out.write("        for (i = 0;i < 10; i++)\r\n");
      out.write("        printf(\"%s\\n\", a[i]);\r\n");
      out.write("    }\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>a. hey hello how Segmentation fault</div>\r\n");
      out.write("          \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>8.Which string should be used inside scanf() to get strings after space?</div>\r\n");
      out.write("        <div>b. %[^\\n]%*c</div>\r\n");
      out.write("         \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div>9.Guess the output?</div>\r\n");
      out.write("<pre>\r\n");
      out.write("#include <stdio.h>\r\n");
      out.write("    int main()\r\n");
      out.write("    {\r\n");
      out.write("        int i = 97, *p = &i;\r\n");
      out.write("        foo(&i);\r\n");
      out.write("        printf(\"%d \", *p);\r\n");
      out.write("    }\r\n");
      out.write("    void foo(int *p)\r\n");
      out.write("    {\r\n");
      out.write("        int j = 2;\r\n");
      out.write("        p = &j;\r\n");
      out.write("        printf(\"%d \", *p);\r\n");
      out.write("    }\r\n");
      out.write("</pre>\r\n");
      out.write("        <div>c. 2 97</div>\r\n");
      out.write("         \r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("        <div>10.What will be the output of the following code?\r\n");
      out.write("        </div>\r\n");
      out.write("<pre>\r\n");
      out.write("void main()\r\n");
      out.write("{\r\n");
      out.write("int k = 5;\r\n");
      out.write("int *p = &k;\r\n");
      out.write("int **m = &p;\r\n");
      out.write("**m = 6;\r\n");
      out.write("printf(\"%d\\n\", k);\r\n");
      out.write("}\r\n");
      out.write("</pre>\r\n");
      out.write("        \r\n");
      out.write("        <div>c. 6</div>\r\n");
      out.write("</div>\r\n");
      out.write("       \r\n");
      out.write("    \r\n");
      out.write("    </div>\r\n");
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
