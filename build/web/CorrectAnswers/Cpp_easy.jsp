<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("../sign_in.html");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>C++ Easy Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">
  
    </head>
<body background="../images/bg1.jpg">
    <div >
       
        <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
            <tr align="center">
    
                <td><img src="../images/logo.png"width="150px"height="150px"></td>
                <td class="titletheme">Test Your Skills</td>
                <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>
                 </tr>
              
            </table>
            <div class="correct"> <h1> Correct Answers: C++_Easy</h1> </div>

       
    <div id="question">       
        <div class="container">
        <div>1.What is size of int data type in cpp?</div>
        <div>d<input type="radio" name="31" value="d">Depends on Compiler</div>  
    </div>
    <div class="container">
        <div>2.What following operator is called "?:"</div>
        <div>c<input type="radio" name="32" value="c">Ternary Operator</div>
    </div>
    <div class="container">
        <div>3.What is currect syntax of for loop?</div>
        <div>a<input type="radio" name="33" value="a">for(initialization;condition; increment/decrement)</div>
      
    </div>
    <div class="container">
        <div>4.Can we overload functions in C++?</div>
        <div>a<input type="radio" name="34" value="a"> Yes</div>
       
    </div>    
    <div class="container">
        <div>5.Which operator has highest precedence in * / % ?</div>
        <div>d<input type="radio" name="35" value="d"> all have same precedence</div>  
    </div>
    <div class="container">
        <div>6.What is the full form of oop</div>
        <div>a<input type="radio" name="36" value="a">Object oriented programming</div>
    </div>
    <div class="container">
        <div>7.Can a Structure contain pointer to itself?</div>
        <div>a<input type="radio" name="37" value="a">Yes</div>
        
    </div>
    <div class="container">
        <div>8.What should be the location of "using namespace std;" in c++ code?</div>
      
        <div>d<input type="radio" name="38" value="d">After all #inludes</div>  
        </div>
        <div class="container">    
        <div>9.What do you understand by GUI?</div>

        <div>d<input type="radio" name="39" value="d"> Both A and B</div>  
        </div>
        <div class="container">
        <div>10.A constructor is a special type of?</div>
        <div>c<input type="radio" name="40" value="c">function</div>
         </div>
        
    
</div>
</body>
</html>