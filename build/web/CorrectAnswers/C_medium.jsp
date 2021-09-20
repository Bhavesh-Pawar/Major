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
    <title>C Medium Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">
    
    </head>
<body background="../images/bg1.jpg">
  
    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">

            <td><img src="../images/logo.png"width="150px"height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
            <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>

        </tr>
        </table>
        <div class="correct"> <h1> Correct Answers: C_Medium</h1> </div>
        <div id="question"> 
        <div class="container">
        <div>1.What will be the output of the following statement ?</div>
<pre>
printf( 3 + "goodbye");
</pre>
        
        <div>d. dbye</div>  
    </div>
    <div class="container">
        <div>2.What will be the output of following statements ?</div>
<pre>
char x[] = "hello hi"; printf("%d%d",sizeof(*x),sizeof(x));
</pre>
        
        <div>d. 19</div>  
    </div>
    <div class="container">
        <div>3. What is the output?</div>
<pre>
#include
main()
{
char str[]="S\065AB";
printf("\n%d", sizeof(str));
}
</pre>
        <div>c. 5 </div>
    </div>
        <div class="container">
        <div>4.What is a lint?</div>      
    
        <div>c. Analyzing tool</div>
          
        </div>
    <div class="container">
        <div>5.The maximum length of a variable in C is ___</div>
        <div>a. 8</div>
         
    </div>
    <div class="container">
        <div>6.p++ executes faster than p+1 because</div>
        <div>b. p++ is a single instruction</div>
        
    </div>
    <div class="container">
        <div>7.The printf() function returns which value when an error occurs?</div>
       
        <div>c. Negative value</div>
       
    </div>
    <div class="container">
        <div>8.The meaning of conversion character for data input is</div>
       
        <div>c. Data item is a short integer</div>
    </div>
    <div class="container">
        <div>9.A “switch” statement is used to:</div>

        <div>d. None of these.</div>  
    </div>
    <div class="container">
        <div>10.If you want to exchange two rows in a two-dimensional array, the fastest way is to:            </div>
       
        <div>c. Silence the address of the rows in an array of the pointer and exchange the pointer</div>
    </div>
        
</div>
</body>
</html>