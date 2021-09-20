
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
    <title>C Easy Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">  
    <style>
        
  </style>
    </head>
    <body background="../images/bg1.jpg" >
        
        <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
            <tr align="center">
    
                <td><img src="../images/logo.png"width="150px"height="150px"></td>
                <td class="titletheme">Test Your Skills</td>
            </tr>
            <tr>
            
                <span id="display" class="timer"></span>
            
            <div id="submitted"></div>          
            </tr>
            </table>
    
<script>
    var div = document.getElementById('display');
    var submitted = document.getElementById('submitted');

      function CountDown(duration, display) {

                var timer = duration, minutes, seconds;

              var interVal=  setInterval(function () {
                    minutes = parseInt(timer / 60, 10);
                    seconds = parseInt(timer % 60, 10);

                    minutes = minutes < 10 ? "0" + minutes : minutes;
                    seconds = seconds < 10 ? "0" + seconds : seconds;
            display.innerHTML ="<b>" + minutes + "m : " + seconds + "s" + "</b>";
                    if (timer > 0) {
                       --timer;
                    }else{
               clearInterval(interVal)
                        SubmitFunction();
                     }

               },1000);

        }

      function SubmitFunction(){
        submitted.innerHTML="Time is up!";
        document.getElementById('C').submit();

       }
     function demoVisibility() 
     {
        document.getElementById('question').style.visibility='visible'; 
        document.getElementById('startButton').style.visibility='hidden'; 
        document.getElementById('display').style.visibility='visible'; 
        document.getElementById('instruct').style.visibility='hidden';
        document.getElementById('instruct').style.height='0px';
        CountDown(1200,div);
     }  
    </script>
    <div id="instruct">
        <h1>INSTRUCTIONS</h1>
        <ol type="I" id="lines">
            <li>You have to submit the test within time.</li>
            <li>After times up,it will be auto submitted.</li>
            <li>Read the questions carefully</li>
            <li>All the best :)</li>
        </ol>
    </div>
    <div id="startButton"  onclick=demoVisibility() class="startTest">Start the test</div> 
    <div style="visibility: hidden;" id="question"> 
        <form action="get_easy_c.jsp" name="C" id="C" method="POST">
           
            <div class="container">
               
                <div>1. C is invented in which year ?</div>
                <div>a<input type="radio"  name="1" value="a"> 1971</div>
                <div>b<input type="radio"  name="1" value="b">1972</div>
                <div>c<input type="radio"  name="1" value="c">1973</div>
                <div>d<input type="radio"  name="1" value="d">1970</div>  
            </div>
        <div class="container">
        <div>2.The format identifier %i is also used for _____ data type?</div>
        <div>a<input type="radio" name="2" value="a">char</div>
        <div>b<input type="radio" name="2" value="b">int</div>
        <div>c<input type="radio" name="2" value="c">float</div>
        <div>d<input type="radio" name="2" value="d">double</div>  
    </div>        
        <div class="container">
            <div>3.What is the size of an int data type?</div>
            <div>a<input type="radio" name="3" value="a">4 Bytes</div>
            <div>b<input type="radio" name="3" value="b">8 Bytes</div>
            <div>c<input type="radio" name="3" value="c"> Depends on the system/compiler</div>
            <div>d<input type="radio" name="3" value="d">Cannot be determined</div>  
        </div>
        <div class="container">
        <div>4.Who is father of C Language? </div>
        <div>a<input type="radio" name="4" value="a"> Bjarne Stroustrup</div>
        <div>b<input type="radio" name="4" value="b">Dennis Ritchie</div>
        <div>c<input type="radio" name="4" value="c"> James A. Gosling</div>
        <div>d<input type="radio" name="4" value="d">Dr. E.F. Codd</div>  
        </div>
        <div class="container">
        <div>5.Which of the following shows the correct hierarchy of arithmetic operations in C
        </div>
        <div>a<input type="radio" name="5" value="a">/ + * -</div>
        <div>b<input type="radio" name="5" value="b">* - / +</div>
        <div>c<input type="radio" name="5" value="c">+ - / *</div>
        <div>d<input type="radio" name="5" value="d"> * / + -</div>  
        </div>
        <div class="container">
        <div>6.The Default Parameter Passing Mechanism is called as </div>
        <div>a<input type="radio" name="6" value="a">Call by Value</div>
        <div>b<input type="radio" name="6" value="b">Call by Reference</div>
        <div>c<input type="radio" name="6" value="c"> Call by Address</div>
        <div>d<input type="radio" name="6" value="d">Call by Name</div>  
        </div>
        <div class="container">
        <div>7.In switch statement, each case instance value must be _______? </div>
        <div>a<input type="radio" name="7" value="a">Constant</div>
        <div>b<input type="radio" name="7" value="b">Variable</div>
        <div>c<input type="radio" name="7" value="c">Special Symbol</div>
        <div>d<input type="radio" name="7" value="d">None of the avobe</div>  
        </div>
        <div class="container">

            <div>8.What is the right way to access value of structure variable book{ price, page }?</div>
            <div>a<input type="radio" name="8" value="a">printf("%d%d", book.price, book.page);</div>
            <div>b<input type="radio" name="8" value="b">printf("%d%d", price.book, page.book);</div>
            <div>c<input type="radio" name="8" value="c">printf("%d%d", price::book, page::book);</div>
            <div>d<input type="radio" name="8" value="d">printf("%d%d", price->book, page->book);</div>  
        </div>
        <div class="container">
            <div>9. What will be the value of `a` after the following code is executed
<pre>
#define square(x) x*x
a = square(2+3)
</pre></div>
        <div>a<input type="radio" name="9" value="a">25</div>
        <div>b<input type="radio" name="9" value="b">13</div>
        <div>c<input type="radio" name="9" value="c"> 11</div>
        <div>d<input type="radio" name="9" value="d">10</div>  
        </div>
        <div class="container">
        <div>10.The keyword break cannot be simply used within:
            </div>
        <div>a<input type="radio" name="10" value="a">do-while</div>
        <div>b<input type="radio" name="10" value="b">if-else</div>
        <div>c<input type="radio" name="10" value="c"> for</div>
        <div>d<input type="radio" name="10" value="d">while</div>  
    </div>
            <input class="btn" type="submit">
        <%
            session.setAttribute("status", "true");
         %>   
    </form>
</div>
</body>
</html>