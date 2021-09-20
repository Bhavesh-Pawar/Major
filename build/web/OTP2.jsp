
<%@page import="p1.MD"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="p1.demojavamail"%>
<%@page import="p1.DBConnection"%>
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
            <td class="button button4"><a href="sign_in.html">User Sign-in Page</a></td>
             </tr>
       
        </table>
    <br>
<div class="design">
       <h2>Verify OTP</h2> <br>
    <div style="max-width:400px;margin:auto">
<%!
String pass=null;
Connection conn=null;
PreparedStatement pstm=null;

%>
<%
    MD md5 =new MD();
    DBConnection dbc=new DBConnection();
    demojavamail obj =new demojavamail();
    String hashedPass=null;
    conn=dbc.getConnection();
   try
   {
       
        if(request.getParameter("otp").equals(session.getAttribute("otp")))
    {
        pstm=conn.prepareStatement("UPDATE userdata set userpass=? where username=?");
        
        out.println("<h2>\"OTP Matched\"</h2>");
        out.println("<h2>\"New Password has been sent to the registered email \"</h2>");
           pass =String.valueOf(obj.Pass(6));
    String message ="Your New Password is : "+ pass +"\n"+"Please Immediately change this password,after logging in.";
		String subject = "New Password";
		String to =  session.getAttribute("username").toString();
		String from = "testyourskills100@gmail.com";
   pstm.setString(1, md5.MD5(pass).toString());
  pstm.setString(2, session.getAttribute("username").toString());
    pstm.executeUpdate();
    obj.sendEmail(message,subject,to,from);
    }
    else
    {
        out.println("<h2>\"Didn't Matched\"</h2>");
    }
   }catch(Exception e)
   {
       out.print(e);
   }
%>
        
        </div>
    </div>


</body>
</html>


