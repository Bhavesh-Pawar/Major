<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }
%> 
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<link rel="stylesheet" href="style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Zen+Old+Mincho&display=swap" rel="stylesheet">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
<style>
        body {
            font-family: 'Zen Old Mincho', serif;
        }
    </style>
<script>

         window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 

</script>
    
        <body background="images/bg1.jpg">
         <div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><img src="images/close.png"width="30px"height="30px"></a>
  <a href="profile.jsp">Profile</a>
  <a href="tutorial.jsp">Tutorials</a>
  <a href="about_us.jsp">About</a>
</div>

    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">
            <td><button class="openbtn" onclick="openNav()"><img src="images/hamburger.png" width="50px" height="50px"></button><td>  

            <td><img src="images/logo.png" width="150px" height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button button4">
                <a href="logout.jsp" > Log Out </a>
            </td>
        </tr>
        <tr>
           
        </tr>
        </table>
    <table width="100%">
        <tr align="center">
             <td class="highlighter"><a href="index.jsp">Home</a></td>
            <td class="dropdown dropbtn">C 
            <div class="dropdown-content">
                <a href="TestPages/C_easy.jsp">Easy</a>
            <a href="TestPages/C_medium.jsp">Medium</a>
            <a href="TestPages/C_difficult.jsp">Difficult</a>
            </div></td>
             <td class="dropdown dropbtn">C++ 
            <div class="dropdown-content">
            <a href="TestPages/Cpp_easy.jsp">Easy</a>
            <a href="TestPages/Cpp_medium.jsp">Medium</a>
            <a href="TestPages/Cpp_difficult.jsp">Difficult</a>
            </div></td>
             <td class="dropdown dropbtn">Python
            <div class="dropdown-content">
            <a href="TestPages/Python_easy.jsp">Easy</a>
            <a href="TestPages/Python_medium.jsp">Medium</a>
            <a href="TestPages/Python_difficult.jsp">Difficult</a>
            </div></td>
            <td class="dropdown dropbtn">Java 
              <div class="dropdown-content">
                  <a href="TestPages/Java_easy.jsp">Easy</a>
                  <a href="TestPages/Java_medium.jsp">Medium</a>
                  <a href="TestPages/Java_difficult.jsp">Difficult</a>
              </div></td>
            </tr>
        </table>
  
          </br>
          </br>
          </br>
          <table width="100%">
              <tr>
                 <!-- <td><input type="submit" style=width:90%;height:200px;background-color:white;border-radius:50px; value="File Missing Person Complain"></td>
                  <!--<td><input type="submit" style=width:50%; height:2000px; font-family:sans-serif; font-size:20px; background-color:black; border-radius:300px; value="Found Person"></td>-->
              
                      <td></td>
              </tr>
                 </table>
          <jsp:include page="weekly_contest.jsp"/>
          <br><br><br><br><br><br>
          <div id="container" class="gc">
          <div class="w3-content w3-section" style="max-width:1500px">
              <img class="mySlides" src="images/t1.jpg" style="width:100%">
  <img class="mySlides" src="images/t2.jpg" style="width:100%">
  <img class="mySlides" src="images/t3.jpg" style="width:100%">
   <img class="mySlides" src="images/t4.jpg" style="width:100%">
    <img class="mySlides" src="images/t5.jpg" style="width:100%">
    <img class="mySlides" src="images/t6.jpg" style="width:100%">
</div>
<div id="chat" class="chat col">
  <img src="images/bot.png" alt="Robot cartoon" height="150vh" class="bot">
  <div id="messages" class="messages"></div>
  <input id="input" type="text" placeholder="Say something..." autocomplete="off" autofocus="true" />

</div>
</div>
<script type="text/javascript" src="js/index.js" ></script>
<script type="text/javascript" src="js/constants.js" ></script>
<script type="text/javascript" src="js/speech.js" ></script>
          <script>
function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>
    </body>
    </html>
