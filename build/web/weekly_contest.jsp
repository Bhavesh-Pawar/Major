<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }
%> 
<%@page import="p1.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
            <link rel="stylesheet" href="weekly_contest.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
          
    <body>
        <%!
            Connection conn=null;
            Statement stm=null;
            Statement stm_opp=null;
            ResultSet rs=null;
            ResultSet rs_opp=null;
            %>
        <%
             int i=0;
            try
            {
             DBConnection obj =new DBConnection();
            conn=obj.getConnection();
            stm=conn.createStatement();
            stm_opp=conn.createStatement();
            String sql="SELECT * FROM questions";
            
            
            String sql_opp="SELECT * FROM oppurtunity";
            
            
            rs=stm.executeQuery(sql);
            rs_opp=stm_opp.executeQuery(sql_opp);
           
          %>
        
        <div class="row">
  <div class="column">
    <div class="card">
      
      <div class="container">
       <h3 class="glow">New Opportunity</h3> 
       <h6>(last date of registration)</h6>
       <%
            while(rs_opp.next())
            {
                %>
                <p><h3><%= ++i %>.
                    <a class="" href="<%= rs_opp.getString("Link") %>" id="question" target="_blank"><%= rs_opp.getString("CompanyName") %></a>-<%= rs_opp.getString("LastDate") %></h3></p>
                      
                <%
                 }      

          %>
       
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      
      <div class="container">
      <h3 class="glow">Weekly Contest</h3>
      <%
            while(rs.next())
            {
                int id=rs.getInt("q_id");
                if(id==1)
                {
                %>
                      <p><h3>1.<a href="contestqstn1.jsp" id="question"><%= rs.getString("question") %></a></h3></p>

                <%
                 }
                if(id==2)
                {
                %>
                      <p><h3>2.<a href="contestqstn2.jsp" id="question"><%= rs.getString("question") %></a>              
</h3></p>

                <%
                 }
                if(id==3)
                {
                %>
                <p><h3>3.<a href="contestqstn3.jsp" id="question"><%= rs.getString("question") %></a>
</h3></p>
                <%
                 }
            }
            %>
            <%

            }catch(Exception e)
            {
                out.println(e);
            }
        %>
      
      </div>
    </div>
  </div>
        <br><br><br>
    </body>
</html>
