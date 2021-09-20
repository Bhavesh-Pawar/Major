 
<%@page import="p1.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.demojavamail"%>
<%! String OTP=null; 
    Connection conn=null;
    Statement stm=null;
    ResultSet rs=null;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OTP Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@700&display=swap" rel="stylesheet">
    <link href="signin_signup.css" rel="stylesheet">

        <script type="text/javascript">
         window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
        
        </script>
        <style>
        *{
            font-family: 'Lato', sans-serif;
        }
		
        
	</style>
</head>

<body background="images/bg1.jpg">
     <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">
             <td><img src="images/logo.png" width="150px" height="150px" ></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button button4"><a href="OTPp.html">Change Password Page</a></td>
             </tr>
       
        </table>
    <br>
    <div id="registred">     </div>
<div class="design">
       <h2>Change Password</h2> <br>
 Welcome to Test Your Skills        <br>
     <div style="max-width:400px;margin:auto">

 <%
     String tableName=null;
    DBConnection dbc =new DBConnection();
    demojavamail obj =new demojavamail();
    try
    {
        conn=dbc.getConnection();
    stm=conn.createStatement();
    String username=request.getParameter("email");
    String sql="Select username from userdata where username='"+username+"'";
    rs=stm.executeQuery(sql);
    while(rs.next())
    {
         tableName=rs.getString("username");   
    }   
    if(tableName.equals(username))
        {
             OTP=String.valueOf(obj.OTP(4));
    String message ="Your OTP is : "+ OTP;
		String subject = "Password Reset";
		String to = request.getParameter("email");
		String from = "testyourskills100@gmail.com";
    
    session.setAttribute("otp", OTP);
    session.setAttribute("username", username);

    obj.sendEmail(message,subject,to,from);
    %>
      <form action="OTP2.jsp" method="POST" id="showForm">	
        <div class="input-icons">
            
           
            
          <label for="pass">
                <i class="fa fa-lock icon"></i>
            </label>
            <input id="pass" class="input-field" name="otp" type="text" placeholder="Enter OTP" required>
           
            <input class="button button4" type="submit" value="Verify OTP">
            <input class="button button4" type="reset" value="Reset">
             </div>
        </form>
          </div>
</div>

    <%
        }
        else
        {
        response.sendRedirect("checkEmailOTP.jsp");
        }

    }catch(Exception e)
    {
        out.println(e);
        response.sendRedirect("checkEmailOTP.jsp");

    }
   
%>
	
        

</body>
</html>


