<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }
%> 
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="cdn.jsdelivr.net_npm_bootstrap@5.0.1_dist_css_bootstrap.min.css">
        <link rel="stylesheet" href="contest_new_page.css">
    </head>
    <body> 
        <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">
          

            <td><img src="images/logo.png"width="150px"height="150px"alt="logo"></td>
            <td class="titletheme">Test Your Skills</td>
            <td ><a href="index.jsp" class="btn btn-primary">Go to Home Page </a></td>
        </tr>
</table>

        <%!
            Connection conn=null;
            Statement stm=null;
            ResultSet rs=null;
            %>
           
        <%
            try
            {
             DBConnection obj =new DBConnection();
            conn=obj.getConnection();
            stm=conn.createStatement();
            String sql="SELECT * FROM questions WHERE q_id = 1";
            rs=stm.executeQuery(sql);
            %>
            <%
            while(rs.next())
            {
                %>
                <nav class="mx-6 justify-content-between">
                    <ul class="pagination">
                        <li class="page-item active"><a class="page-link">1</a></li>
                        <li class="page-item"><a class="page-link" href="contestqstn2.jsp">2</a></li>
                        <li class="page-item"><a class="page-link" href="contestqstn3.jsp">3</a></li>
                    </ul>
                </nav>
                <div class="container_">    
                    <div class="box" id="contestqstn">
                        <h3 id="heading">Weekly Contest</h3>
                        <ul>
                            <li class="subhead">Problem Statement</li></br>
                       <li><%= rs.getString("question") %></li></br>
                       <li class="subhead">Description</li></br>
                       <li> <%= rs.getString("description") %></li></br>
                       <li class="subhead">Sample Input</li></br>
                        <li><%= rs.getString("test_input_1") %></li></br>
                        <li class="subhead">Sample Output</li></br>
                        <li><%= rs.getString("test_output_1") %></li></br>
                        <li class="subhead">Sample Input</li></br>
                        <li><%= rs.getString("test_input_2") %></li></br>
                        <li class="subhead">Sample Output</li></br>
                        <li><%= rs.getString("test_output_2") %></li>
                        </ul>
                    </div>
                <%
            }
                %>
                    <div class="box">
                        <jsp:include page="Compiler.html"/>
                    </div>
                </div>
            <%
                }
                catch(Exception e)
            {
                out.println(e);
            }
        %>   
    </body>
</html>