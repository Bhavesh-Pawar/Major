<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<%@page import="p1.MD"%>
<%@page import="p1.DBConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <link rel="stylesheet" href="signin_signup.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Cormorant+Upright:wght@500&display=swap" rel="stylesheet">
</head>
<script>
     window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
  </script>
    <body onload="noBack()">
<%!
    Connection conn=null;
    Statement stm=null;
    ResultSet rs=null;
%>
<%
    
if(request.getMethod().equalsIgnoreCase("POST"))
{
    try
{
    String username=request.getParameter("email");
    String userpass=request.getParameter("password");
    String hashedPass=null;
    String DBusername=null;
    String DBuserpass=null;
    int i=0;
//    out.println(username);
    DBConnection db =new DBConnection();
    MD md=new MD();
    hashedPass=md.MD5(userpass).toString();
    conn=db.getConnection();
    stm=conn.createStatement();
    String sql="SELECT * FROM admin where adminname='"+username+"'";
    rs=stm.executeQuery(sql);
    while(rs.next())
    {
         if(rs.getString("adminname").equals(username) && hashedPass.equals(rs.getString("adminpass")))
    {
        session.setAttribute("user_id","admin");
            
     response.sendRedirect("./admin/index.jsp");
    }   
         else
         {
             %>
             <div class="registered">
                 <div class="message">
                     Incorrect Password
                 </div>
                 <a href="sign_in_admin.html" class="goto">TRY AGAIN</a>
             </div>            
             <%
         }
     i++;    
    }
   
}catch(Exception c)
{
response.sendRedirect("sign_in_admin.html");
}
}
 else
{
%>
<div class="registered">
          <div class="message"> Unexpected Error</div>
          <a href="sign_in_admin.html" class="goto">Please go to sign in page </a> 
       </div>

<%
}
    
%>

</body>















