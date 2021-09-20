<%-- 
    Document   : changePass
    Created on : May 17, 2021, 6:27:22 PM
    Author     : my
--%>

<%@page import="p1.MD"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="p1.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
          <link rel="stylesheet" href="signin_signup.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Upright:wght@500&display=swap" rel="stylesheet">
    </head>
    <body>
        <%!
            Connection conn=null;
            Statement stm=null;
            PreparedStatement pstm=null;
            ResultSet rs=null;
            %>
        <%
          try
  {
      MD md5=new MD();
      
     StringBuffer hashedOldPass=null;
      String  table_pass=null;
          String old_pass=request.getParameter("current");
          String new_pass=request.getParameter("new");
          String confirm_new_pass=request.getParameter("cnew");
      hashedOldPass=md5.MD5(old_pass);
            DBConnection obj =new DBConnection();
            conn=obj.getConnection();
            stm=conn.createStatement();
            
            String sql="SELECT userpass from userdata where id="+session.getAttribute("user_id").toString()+"";
            String change_pass="UPDATE userdata set userpass='"+md5.MD5(confirm_new_pass).toString()+"' WHERE id="+session.getAttribute("user_id").toString()+"";
    rs=stm.executeQuery(sql); 
while(rs.next())
{
    table_pass=rs.getString("userpass");
} 
if(table_pass.equals(hashedOldPass.toString())) 
{
    if(new_pass.equals(confirm_new_pass))
    {
        pstm=conn.prepareStatement(change_pass);
        pstm.executeUpdate();
        out.println("");
        %>
        <div class="registered">
        <a href="profile.jsp">Done,Back to Form Page</a>
       </div>
    <%
    }
    else
    {
        out.println("PASSWORD DIDN'T MATCH");
        %>
        
  <div class="registered">
        <a href="profile.jsp">Try Again</a>
       </div>
    <%
    }
}
else 
{
    out.println("WRONG CURRENT PASSWORD");
    %>
    <div class="registered">
        <a href="profile.jsp">Try Again</a>
       </div>
    <%
        
    }
}catch(Exception e)
{
    out.println(e);
}
%>
    </body>
</html>





