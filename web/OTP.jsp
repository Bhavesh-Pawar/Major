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
                <button class="btn" style="background-color: navy;"> <a href="./OTPp.html" class="text-light">Change
                        Password
                    </a></button>
            </li>
        </ul>
        <div class="row d-flex justify-content-center mt-3">
            <div class="col-md-6" style="background-color: lightskyblue;border: 5px solid black;">

                <h3 class="text-center mt-4" style="color: navy;"><strong>Change Password</strong></h3>
                <h3 class="text-center mt-4" style="color: navy;">Welcome to Test Your Skills</h3>
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
            <form action="OTP2.jsp" method="POST">
                <div class="form-group">
                    <i class="fa fa-envelope m-1"></i><label for="exampleInputEmail1">Email OTP</label>
                    <input type="text" name="otp" class="form-control" id="exampleInputEmail1"
                    aria-describedby="emailHelp" placeholder="Enter OTP">
                </div>
                <button type="submit" style="background-color: navy;color: white;" class="btn text-center mb-4">Verify OTP</button>
                    <button type="reset" style="background-color: navy;color: white;"
                    class="btn text-center mb-4">Reset</button>
                </form>
            </div>
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