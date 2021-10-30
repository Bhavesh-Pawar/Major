
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
    <title>Change Password</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zen+Old+Mincho&display=swap" rel="stylesheet">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
        integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="js/my_js.js"></script>
    <style>
        body {
            font-family: 'Zen Old Mincho', serif;
        }
    </style>
</head>

<body background="images/bg1.jpg">
     <div class="container-fluid">
        <ul class="nav nav-pills nav-fill">
            <li class="nav-item m-1">
                <img src="./images/logo.png" class="img-fluid" alt="">
            </li>
            <li class="nav-item m-1">
                <h1 class="text-center">Test Your Skills</h1>
            </li>
            <li class="nav-item m-1">
                <button class="btn" style="background-color: navy;"> <a href="./sign_in.html" class="text-light">User Sign in
                    </a></button>
            </li>
        </ul>
        <div class="row d-flex justify-content-center mt-3">
            <div class="col-md-6" style="background-color: lightskyblue;border: 5px solid black;">

                <h3 class="text-center mt-4" style="color: navy;"><strong>Verify OTP</strong></h3>
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
</div>

</body>
</html>


