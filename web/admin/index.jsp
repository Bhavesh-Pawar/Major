 <%
    if(session.getAttribute("user_id")==null || !session.getAttribute("user_id").equals("admin"))
    {
        response.sendRedirect("../sign_in_admin.html");
    }
%> 
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="../cdn.jsdelivr.net_npm_bootstrap@5.0.1_dist_css_bootstrap.min.css">
<link rel="stylesheet" href="index.css">
<script>

         window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
function showQuestion() 
{
  document.getElementById('addQuestion').style.visibility="visible";
    document.getElementById('addQuestion').style.height="600px";

}
function showOppurtunity()
{
  document.getElementById('addOppurtunity').style.visibility="visible";

}
</script>
           <body background="../images/bg1.jpg">
         <div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><img src="close.png"width="30px"height="30px"></a>
  <a href="profile.jsp">Profile</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">About</a>
</div>

    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">  
            <td><img src="../images/logo.png" width="150px" height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button button4">
                <a href="logout.jsp" > Log Out </a>
            </td>
        </tr>
        </table>
         
        
      <div>
        <ul class="list-group list-group-horizontal">
          <li class="list-group-item"> 
            <button class="btn btn-info" onclick="showQuestion()"> Click me to add question</button>
          </li>
              <li class="list-group-item">
               <a href="#addOppurtunity"> <button class="btn btn-info" onclick="showOppurtunity()" > Click me to add oppurtunity</button></a>
                </li>
            </ul>
      </div>
         
        <div id="addQuestion" style="visibility: hidden;height: 0px;">
        <jsp:include page="QuestionAdd.jsp"/>
      </div>   
      <div id="addOppurtunity" style="visibility: hidden;height: 0px;">
        <jsp:include page="OppurtunityAdd.jsp"/>
      </div>

    </body>
    </html>

    