<%
if(session.getAttribute("user_id")==null || !session.getAttribute("user_id").equals("admin"))
{
    response.sendRedirect("../sign_in_admin.html");
}
%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link rel="stylesheet" href="examNameAdd.css">
    
    </head>
    <body>
        
       
        <div class="qstndiv">
            <form action="addOppurtunity.jsp" method="post">
            <table class="qstable">
                <tr id="qshading">
                    <td id="qno">Company Name</td>
                    <td id="qstn">Exam name</td>
                    <td id="dscrip">Link</td>
                    <td class="tst">Last date of registration</td> 
               </tr>
                <tr>
                   <td><textarea class="test sno" name="companyName" ></textarea></td>
                   <td><textarea class="descibe" name="examName" ></textarea></td>
                   <td><textarea class="descibe" name="link" ></textarea></td>
                   <td><textarea class="test" name="lastDate" ></textarea></td>
                </tr>  

               <tr>
                   <td><textarea class="test sno" name="companyName" ></textarea></td>
                   <td><textarea class="descibe" name="examName" ></textarea></td>
                   <td><textarea class="descibe" name="link" ></textarea></td>
                   <td><textarea class="test" name="lastDate" ></textarea></td>
               </tr>
               <tr>
                   <td><textarea class="test sno" name="companyName" ></textarea></td>
                   <td><textarea class="descibe" name="examName" ></textarea></td>
                   <td><textarea class="descibe" name="link" ></textarea></td>
                   <td><textarea class="test" name="lastDate" ></textarea></td>
               </tr> 
           </table>  
         <input type="submit" class="upload" value="Update Oppurtunity">
         

        </form>

        </div>
    </body>
</html>

