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
    <title>Python Easy Question</title>
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
        <div class="correct"> <h1> Correct Answers: Python_Easy</h1> </div>

    <div id="question"> 
        <form action="get_easy_python.jsp" method="POST">
        <div class="container">
            <div class="question"><span class="dot">01</span>Is Python case sensitive when dealing with identifiers?</div>
            <div>a<input type="radio"  name="61" value="a"> yes</div>
        </div>
        <div class="container">
            <div class="question"><span class="dot">02</span>What is the maximum possible length of an identifier?</div>
               
            <div>d<input type="radio" name="62" value="d">none of the mentioned</div>  
        </div>
        <div class="container">
        <div class="question"><span class="dot">03</span>Which of the following is invalid? </div>
        <div>d<input type="radio" name="63" value="d">none of the mentioned</div>  
    </div>
        <div class="container">
        <div class="question"><span class="dot">04</span>All keywords in Python are in _________  </div>
        <div>d<input type="radio" name="64" value="d">None of the mentioned</div> 
        </div> 
        <div class="container">
        <div class="question"><span class="dot">05</span>What is the output of print 0.1 + 0.2 == 0.3?</div>
        <div>b<input type="radio" name="65" value="b">False</div>
        </div> 
        <div class="container">
        <div class="question"><span class="dot">06</span>Which of the following is not a complex number</div>
        <div>c<input type="radio" name="66" value="c">k = 2 + 3l</div>
        </div> 
        <div class="container">
        <div class="question"><span class="dot">07</span>What is the type of inf</div>
        <div>c<input type="radio" name="67" value="c">Float</div>
        </div> 
        <div class="container">
        <div class="question"><span class="dot">08</span>What will be the output of the following code? 
<pre>s = 'ABC'
    n = 1
    for c in s:
        print c * n,
        n += 1
</pre></div>
        
        <div>c<input type="radio" name="68" value="c">
<pre>
A
BB
CCC
</pre></div>
       </div>  
        <div class="container">
        <div class="question"><span class="dot">09</span>What does the following code print?
            <pre>
            fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
            print fibonacci[1:3]
        </pre>
           </div>
        <div>c<input type="radio" name="69" value="c">[1, 2]</div>
        </div> 
        <div class="container">
        <div class="question"><span class="dot">10</span>What will be the output of code?
        <pre>
a={5,4}
b={1,2,4,5}
print a&lt;b
</pre>
</div>  
        <div>b<input type="radio" name="70" value="b">True</div>
    </div>       
       
</div>

</body>
</html>