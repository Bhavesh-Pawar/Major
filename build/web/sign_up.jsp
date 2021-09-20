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
    </script
    <body onload="noBack()">
<%!
    Connection conn=null;
    PreparedStatement stm=null;
%>
<%

if(request.getMethod().equalsIgnoreCase("POST"))
{
    try
{
    String hashedPass=null;
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String username=request.getParameter("email");
    String userpass=request.getParameter("password");
    DBConnection db =new DBConnection();
    MD md=new MD();
    conn=db.getConnection();
    String sql="insert into userdata() values(?,?,?,?,?,?)";
    stm=conn.prepareStatement(sql);
    
    hashedPass=md.MD5(userpass).toString();
    
    
    stm.setInt(1, 0);
    stm.setString(2,fname);
    stm.setString(3, lname);
    stm.setString(4, username);
    stm.setString(5, hashedPass);
    stm.setString(6, null);
    
    int i=stm.executeUpdate();
    
    
    if(i>0)
    {
        
       %>
<div class="registered">
    <div class="message">
       Hello, Your username is : <%= username%> 
    </div>
    
    <div>
    <a href="sign_in.html" class="goto">GO TO SIGN IN</a>  
    </div>
</div>
           
       <%
    }
}catch(MySQLIntegrityConstraintViolationException e)
{
   %>
<div class="registered"> 
    <div class="message">
       Already registered.....Please sign in.
    </div>
    
    <div>
       <a href="sign_in.html" class="goto">Go to Sign in Page</a>
     </div>
</div>
       
   <%    
}
}
else 
{
   %>
<div class="registered">
    <div class="message">
       Unexpected Error
    </div>
       
    <div>
    <a href="sign_in.html" class="goto">Go to Sign in Page</a>
    </div>
     
</div>   
   <%
}
    
%>

</body>















