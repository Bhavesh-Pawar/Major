

<%@page import="java.util.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Skills</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="profile.css">
</head>
<%!
    
    Connection conn=null;
    Statement stm=null; 
    ResultSet rs=null;
    double c=0,cpp=0,java=0,python=0;
%>
<%
  try
    {
        
        DBConnection obj =new DBConnection();
    conn=obj.getConnection();
    stm=conn.createStatement();
 String sql_python="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='python'and user_id='"+(String)session.getAttribute("user_id")+"'";
    rs=stm.executeQuery(sql_python);
    try
    {
           while(rs.next())
        python=rs.getDouble("per");
    }catch(Exception e)
    {
        python=0;
        out.print("By python");
    }
    
  String sql_c="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='c' and user_id='"+(String)session.getAttribute("user_id").toString()+"'";
    rs=stm.executeQuery(sql_c);
    try
    {
           while(rs.next())
        c=rs.getDouble("per");
    }catch(Exception e)
    {
        c=0;
         out.print("By c");
    }
       
    
    String sql_cpp="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='c++' and user_id='"+(String)session.getAttribute("user_id").toString()+"'";
    rs=stm.executeQuery(sql_cpp);
    try
    {
           while(rs.next())
        cpp=rs.getDouble("per");
    }catch(Exception e)
    {
        cpp=0;
         out.print("By c++");
    }
    
    String sql_java="SELECT AVG(score) AS per FROM score WHERE LANGUAGE='java' and user_id='"+(String)session.getAttribute("user_id").toString()+"'";
    rs=stm.executeQuery(sql_java);
   try
    {
           while(rs.next())
        java=rs.getDouble("per");
    }catch(Exception e)
    {
        java=0;
         out.print("By java");
    }
  
    }catch(Exception e)
    {
out.println(e);        
    }

   
    %>
    
    <div class="skills">
        
        <div class="heading box">My Skills</div>
        <div class="subject box">C</div>
        <div class="box"><span class="bar"><span style="width: <%= c*10%>%;"></span></span> <span class="percent"><%= c*10%>%</span></div>
        <div class="subject box">C++</div>
        <div class="box"><span class="bar"><span style="width: <%= cpp*10%>%;"></span></span>  <span class="percent"><%= cpp*10%>%</span></div>
        <div class="subject box">Java</div>
        <div class="box"><span class="bar "><span style="width: <%= java*10%>%;"></span></span>  <span class="percent"><%= java*10%>%</span></div> 
        <div class="subject box">Python</div>
        <div class="box"><span class="bar"><span style="width: <%= python*10%>%;"></span></span>  <span class="percent"><%= python*10%>%</span></div>
        <div><a href="index.jsp" class="btn btn-primary">Back to Home</a></div>
    </div>
        <script>
                 window.history.forward(); 
                function noBack() { 
                    window.history.forward(); 
                } 
                window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
        </script>
</body>

