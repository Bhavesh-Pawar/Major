<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }
%> 

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
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300&display=swap" rel="stylesheet">
    <style>
  .body
  {
      
        font-family: 'Poppins', sans-serif;
  }
        </style>
</head>
<%!
    String pic="images/default profile.jpg";;
    Blob image=null;
    byte []imgData=null;
    Connection conn=null;
    Connection conn2=null;
    Statement stm=null;
    Statement stm2=null;
    ResultSet rs=null;
    ResultSet rs2=null;
    String name=null;
%>


<%
  try
    {

    DBConnection obj =new DBConnection();
    conn=obj.getConnection();
    stm=conn.createStatement();
    String sql= "SELECT pic FROM userdata where id = '"+(String)session.getAttribute("user_id")+"'";
    rs=stm.executeQuery(sql);
    while(rs.next())
    {
        image=rs.getBlob("pic");
        imgData=image.getBytes(1, (int)image.length());
        String encodedImage=Base64.getEncoder().encodeToString(imgData);
        pic="data:image/jpg;base64,"+encodedImage;

    }

    }catch(Exception e)
    {
        pic="images/default profile.jpg";

    }
  
   try
   {
       DBConnection obj2=new DBConnection();
        conn2=obj2.getConnection();
    stm2=conn2.createStatement();
    String sql_name= "SELECT fname FROM userdata where id = '"+(String)session.getAttribute("user_id")+"'";
    rs=stm.executeQuery(sql_name);
    while(rs.next())
    {
       name=rs.getString("fname");
    }

   }catch(Exception e)
   {
       out.println("Error in name");
   }
  %>
    <body>
    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">
             <td><td>

            <td><img src="images/logo.png"width="150px"height="150px"alt="logo"></td>
            <td class="titletheme">Test Your Skills</td>
            <td > <button class="btn btn-primary" onclick="showHidden()"> Change password</button> </td>
        </tr>
</table>
    <div class="skills">
        <div id="profile" class="box heading">Profile</div>
        <div class="box1" id="profile_name">Hi,<%= name %></div>
        <img id="img_profile" src="<%= pic %>" alt="profile" width="100px" height="100px">
        <div class="box1" id="profile_name">Image file should be less than 1 MB.</div>
        <form action="UploadImage" method="post" enctype="multipart/form-data">
         <div>
             <input type="file" name="img" size="50" accept="images/*">
         </div>
        <div>
            <input type="submit" value="Upload">
        </div>
        </form>
        <form action="changePass.jsp" style="visibility: hidden;height: 0px" method="post" id="showChangePass">
            <table class="">
                <tr>
                    <td>
                        
                         current password :  
                    </td>
                    <td>
                         <input type="password" name="current" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        new password
                    </td>
                    <td>
                        <input type="password" name="new" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        confirm new password :
                    </td>
                    <td>
                         <input type="password" name="cnew" required>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>  
                        <input type="submit" class="btn btn-primary m-2">
                    </td>    

                </tr>
            </table>
            
        </form>
         </div>


<jsp:include page="skills.jsp"/>

        <script>
            function showHidden()
            {
                document.getElementById('showChangePass').style.visibility='visible';
                document.getElementById('showChangePass').style.height='200px';
            }
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

