<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
    }
%> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet">
<script>

         window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 

</script>
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.titletheme{font-family:sans-serif;
        font-size:80px;
        color:black;}

 .button1 
  {
  background-color: navy;/* Green */
  border: none;
  color: white;
  padding: 16px 32px;
   text-color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button4 {border-radius: 12px;
color:white;}
.button4:hover {
  background-color: #008CBA;
  color: white;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: navy;
  color: white;
  
}

.container {
  padding: 0 16px;
  
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

.footer{
    background-color: lightskyblue;
     position: relative;
   left: 0;
   bottom: 0;
   width: 100%;
   color: white;
   text-align: center;
}
.fa {
  padding: 20px;
  font-size: 30px;
  width: 80px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;

      
  
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-instagram {
  background: #f40083;
  color: white;
}
.fa-github{
  background: #000;
  color: white;
}


@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: grid;
  }
}
</style>
</head>
<body>

<table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">
            

            <td><img src="images/logo.png" width="150px" height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button1 button4">
                <a style="text-decoration:none; color:white;" href="index.jsp" > HOME </a>
            </td>
        </tr>
        <tr>
           
        </tr>
        </table>

<div class="about-section">
  <h1>About Us</h1>
  <p>Here are some details of our team.</p>
  <p>Resize the browser window to see that this page is responsive by the way.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
        <img src="images/bhavesh.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Bhavesh Panwar</h2>
        <p class="title">CEO & Founder</p>
        <p>Front and Back End Programmer </p>
       
        <p><button class="button"></button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
        <img src="images/mansvi.jpg" alt="Mansvi" style="width:100%">
      <div class="container">
        <h2>Mansvi Shrivastava</h2>
        <p class="title">Full Stack Developer</p>
        <p>Highly motivated full stack developer from India.<br> A Designer: A user interface designer with a passion of desiging beautiful and functional user experiences. Minimalist who thinks less is more.<br> A Coder: Backend developer who focuses on writting clean, elegant and efficient code. And I enjoy competitive programming.</p>
       
        <p><button class="button"></button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="images/nikita.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>Nikita Patel</h2>
        <p class="title">Designer</p>
        <p>Enthusiastic Front End Programmer</p>
    
        <p><button class="button"></button></p>
      </div>
    </div>
  </div>
</div>

<div class="footer">
<a href="#" class="fa fa-facebook"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-linkedin"></a>
<a href="#" class="fa fa-instagram"></a>
<a href="#" class="fa fa-github"></a>
</div>

</body>
</html>