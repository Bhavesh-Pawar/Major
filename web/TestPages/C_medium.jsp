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
    <form action="get_medium_c.jsp" method="POST">

        <div class="container">
        <div>1.What will be the output of the following statement ?</div>
<pre>
printf( 3 + "goodbye");
</pre>
        <div>a<input type="radio" name="11" value="a">goodbye</div>
        <div>b<input type="radio" name="11" value="b">odbye</div>
        <div>c<input type="radio" name="11" value="c">bye</div>
        <div>d<input type="radio" name="11" value="d">dbye</div>  
    </div>
    <div class="container">
        <div>2.What will be the output of following statements ?</div>
<pre>
char x[] = "hello hi"; printf("%d%d",sizeof(*x),sizeof(x));
</pre>
        <div>a<input type="radio" name="12" value="a">88</div>
        <div>b<input type="radio" name="12" value="b">18</div>
        <div>c<input type="radio" name="12" value="c">29</div>
        <div>d<input type="radio" name="12" value="d">19</div>  
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
        <div>a<input type="radio" name="13" value="a"> 7</div>
        <div>b<input type="radio" name="13" value="b">6</div>
        <div>c<input type="radio" name="13" value="c">5 </div>
        <div>d<input type="radio" name="13" value="d">error</div>  
    </div>
        <div class="container">
        <div>4.What is a lint?</div>      
        <div>a<input type="radio" name="14" value="a"> C compiler</div>
        <div>b<input type="radio" name="14" value="b">Interactive debugger</div>
        <div>c<input type="radio" name="14" value="c">Analyzing tool</div>
        <div>d<input type="radio" name="14" value="d">C interpreter</div>  
        </div>
    <div class="container">
        <div>5.The maximum length of a variable in C is ___</div>
        <div>a<input type="radio" name="15" value="a"> 8</div>
        <div>b<input type="radio" name="15" value="b">16</div>
        <div>c<input type="radio" name="15" value="c"> 32</div>
        <div>d<input type="radio" name="5" value="d">64</div>  
    </div>
    <div class="container">
        <div>6.p++ executes faster than p+1 because</div>
        <div>a<input type="radio" name="16" value="a">p uses registers</div>
        <div>b<input type="radio" name="16" value="b">p++ is a single instruction</div>
        <div>c<input type="radio" name="16" value="c">++ is faster than +</div>
        <div>d<input type="radio" name="16" value="d">None of these</div>  
    </div>
    <div class="container">
        <div>7.The printf() function returns which value when an error occurs?</div>
        <div>a<input type="radio" name="17" value="a"> Positive value</div>
        <div>b<input type="radio" name="17" value="b"> Zero</div>
        <div>c<input type="radio" name="17" value="c">Negative value</div>
        <div>d<input type="radio" name="17" value="d">None of these</div>  
    </div>
    <div class="container">
        <div>8.The meaning of conversion character for data input is</div>
        <div>a<input type="radio" name="18" value="a"> Data item is a long integer</div>
        <div>b<input type="radio" name="18" value="b"> Data item is an unsigned decimal integer</div>
        <div>c<input type="radio" name="18" value="c"> Data item is a short integer</div>
        <div>d<input type="radio" name="18" value="d">None of the above</div>  
    </div>
    <div class="container">
        <div>9.A “switch” statement is used to:</div>
        <div>a<input type="radio" name="19" value="a">Switch between user-defined functions in a program</div>
        <div>b<input type="radio" name="19" value="b">Switch from one variable to another variable</div>
        <div>c<input type="radio" name="19" value="c">Jump from one place to another in a program.</div>
        <div>d<input type="radio" name="19" value="d">None of these.</div>  
    </div>
    <div class="container">|
        <div>10.If you want to exchange two rows in a two-dimensional array, the fastest way is to:            </div>
        <div>a<input type="radio" name="20" value="a">Exchange the elements of the 2rows</div>
        <div>b<input type="radio" name="20" value="b">Exchange the address of each element in the two-row</div>
        <div>c<input type="radio" name="20" value="c">Silence the address of the rows in an array of the pointer and exchange the pointer</div>
        <div>d<input type="radio" name="20" value="d">None of these.</div>  
    </div>
        <input class="btn" type="submit">
        <%
            session.setAttribute("status", "true");
         %> 
    </form>
</div>
 <div id="chat">
    <canvas id="canvas"   width="300px" height="300px"  ><video id="video" autoplay ></video></canvas>
    </div>
</body>
<script src="ts.js"></script>
<script src="blazeface.js"></script>
<script src="script.js"></script>
<script src="script.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

<script> 
    let x=0;
  $(document).ready(function(){
  $(document).mouseleave(function()
  {
      if (x==5) 
      {
          $('#C').submit();
      }
    ++x;
   alert("Warning No. "+x);
});
  });
    </script>
</html>