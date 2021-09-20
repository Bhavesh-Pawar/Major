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
    <link rel="stylesheet" href="questionAdd.css">
    </head>
    <body>
        
       
        <div class="qstndiv">
            <form action="addQuestion.jsp" method="post">
            <table class="qstable">
                <tr id="qshading">
                    <td id="qno">Q. No</td>
                    <td id="qstn">Question</td>
                    <td id="dscrip">Description</td>
                    <td class="tst">Test Input 1</td>
                    <td class="tst">Test Output 1</td>
                    <td class="tst"> Test Input 2 </td>
                    <td class="tst">Test Output 2 </td>                                             
               </tr>
               <tr>
                   <td><textarea class="test sno" name="q_id" ></textarea></td>
                   <td><textarea class="descibe" name="question" ></textarea></td>
                   <td><textarea class="descibe" name="description" ></textarea></td>
                   <td><textarea class="test" name="test_input_1" ></textarea></td>
                   <td><textarea class="test" name="test_output_1" ></textarea></td>
                   <td><textarea class="test" name="test_input_2" ></textarea></td>
                   <td><textarea class="test" name="test_output_2" ></textarea></td>
               </tr>
               <tr>
                   <td><textarea class="test sno" name="q_id" ></textarea></td>
                   <td><textarea class="descibe" name="question" ></textarea></td>
                   <td><textarea class="descibe" name="description" ></textarea></td>
                   <td><textarea class="test" name="test_input_1" ></textarea></td>
                   <td><textarea class="test" name="test_output_1" ></textarea></td>
                   <td><textarea class="test" name="test_input_2" ></textarea></td>
                   <td><textarea class="test" name="test_output_2" ></textarea></td>
               </tr>
               <tr>
                   <td><textarea class="test sno" name="q_id" ></textarea></td>
                   <td><textarea class="descibe" name="question" ></textarea></td>
                   <td><textarea class="descibe" name="description" ></textarea></td>
                   <td><textarea class="test" name="test_input_1" ></textarea></td>
                <td><textarea class="test" name="test_output_1" ></textarea></td>
                <td><textarea class="test" name="test_input_2" ></textarea></td>
                <td><textarea class="test" name="test_output_2" ></textarea></td>
               </tr> 
           </table>  
         <input type="submit" class="upload" value="Update Question">
        </form>
        </div>
    </body>
</html>

