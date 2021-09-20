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
        <link rel="stylesheet" href="contest.css">
    </head>
    <body>
         <div class="container"> 
            <h3>Weekly contest</h3>
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
            String sql="SELECT * FROM questions";
            rs=stm.executeQuery(sql);
            %>
            <table class="table-design">
                   
            <%
            while(rs.next())
            {
                int id=rs.getInt("q_id");
                if(id==1)
                {
                %>
                    <tr>
                        <td><%= rs.getInt("q_id") %></td>
                        <td><a href="contestqstn1.jsp" id="question"><%= rs.getString("question") %></a></td>
                    </tr>                            
                <%
                 }
                if(id==2)
                {
                %>
                    <tr>
                        <td><%= rs.getInt("q_id") %></td>
                        <td><a href="contestqstn2.jsp" id="question"><%= rs.getString("question") %></a></td>
                    </tr>                            
                <%
                 }
                if(id==3)
                {
                %>
                    <tr>
                        <td><%= rs.getInt("q_id") %></td>
                        <td><a href="contestqstn3.jsp" id="question"><%= rs.getString("question") %></a></td>
                    </tr>                            
                <%
                 }
            }
            %>
             </table>
            <%

            }catch(Exception e)
            {
                out.println(e);
            }
        %>   
            </div>
    </body>
</html>
