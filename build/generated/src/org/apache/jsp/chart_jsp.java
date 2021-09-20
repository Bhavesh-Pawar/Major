package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import p1.DBConnection;
import java.util.*;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public final class chart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    String dataPoints=null;
    
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
      response.setContentType("text/html; charset=UTF-8");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');

try
{
    DBConnection obj= new DBConnection();
Connection conn=obj.getConnection();
Statement stm=conn.createStatement();
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 String sql="SELECT score,language FROM score where user_id='"+session.getAttribute("user_id")+"'";
ResultSet rs=stm.executeQuery(sql);
int i=1;
while(rs.next())
{
    map = new HashMap<Object,Object>(); 
    map.put("label",i);
    map.put("y", rs.getInt("score"));
    map.put("indexLabel",rs.getString("language").toUpperCase());
    list.add(map);
    i++;
}
  dataPoints= gsonObj.toJson(list);
}catch(Exception e)
{
    out.println(e);
}

      out.write("\n");
      out.write(" \n");
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <style>\n");
      out.write("        .container\n");
      out.write("        {\n");
      out.write("              margin: 25px 25px;\n");
      out.write("    padding: 49px 62px;\n");
      out.write("    position: relative;  \n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("window.onload = function() { \n");
      out.write(" \n");
      out.write("var chart = new CanvasJS.Chart(\"chartContainer\", {\n");
      out.write("\ttitle: {\n");
      out.write("\t\ttext: \"Performance\"\n");
      out.write("\t},\n");
      out.write("\taxisX: {\n");
      out.write("\t\ttitle: \"Test Id\"\n");
      out.write("\t},\n");
      out.write("\taxisY: {\n");
      out.write("            title: \"Test Scores\",\n");
      out.write("                minimum:0,\n");
      out.write("                interval:1,\n");
      out.write("                maximum:10,\n");
      out.write("\t\tincludeZero: true\n");
      out.write("\t},\n");
      out.write("\tdata: [{\n");
      out.write("                indexLabelFontSize:25,\n");
      out.write("                indexLabelPlacement:\"inside\",\n");
      out.write("\t\ttype: \"column\",\n");
      out.write("\t\tdataPoints: ");
out.print( dataPoints );
      out.write("\n");
      out.write("\t}]\n");
      out.write("});\n");
      out.write("chart.render();\n");
      out.write(" \n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"chartContainer\" style=\"text-align: center;height: 370px; width: 100%;\"></div>\n");
      out.write("<script src=\"https://canvasjs.com/assets/script/canvasjs.min.js\"></script>\n");
      out.write("<div></div>\n");
      out.write("<div></div>\n");
      out.write("<div></div>\n");
      out.write("<div></div>\n");
      out.write("<a href=\"./index.jsp\" class=\"container\">GO TO INDEX </a>\n");
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
