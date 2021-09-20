<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("sign_in.html");
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
    <script>
        function openNav() {
          document.getElementById("mySidebar").style.width = "250px";
          document.getElementById("main").style.marginLeft = "250px";
        }
        
        function closeNav() {
          document.getElementById("mySidebar").style.width = "0";
          document.getElementById("main").style.marginLeft= "0";
        }
        </script>
<body background="images/bg1.jpg">
    <div id="mySidebar" class="sidebar">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><img src="images/close.png"width="30px"height="30px"></a>
        <a href="#">Profile</a>
        <a href="#">Services</a>
        <a href="#">Clients</a>
        <a href="#">About</a>
    </div>

    <table style="width:100%;background-color:white;border-radius:30px;height:60px;opacity:0.7">
        <tr align="center">
             <td><button class="openbtn" onclick="openNav()"><img src="images/hamburger.png"width="50px"height="50px"></button><td>  

            <td><img src="images/logo.png"width="150px"height="150px"></td>
            <td class="titletheme">Test Your Skills</td>
        </tr>
       <tr>
            
                <span id="display" class="timer"></span>
            
            <div id="submitted"></div>          
            </tr>
        </table>
        <!-- <div class="start"><button class="btn">Start</button></div> -->
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
        CountDown(1200,div);
     }  
    </script>
    <div id="startButton"  onclick=demoVisibility() class="startTest">Start the test</div> 
    <div style="visibility: hidden;" id="question"> 
        <form action="get_easy_python.jsp" method="POST">
        <div class="container">
            <div class="question"><span class="dot">01</span>Is Python case sensitive when dealing with identifiers?</div>
            <div>a<input type="radio"  name="61" value="a"> yes</div>
            <div>b<input type="radio"  name="61" value="b">no</div>
            <div>c<input type="radio"  name="61" value="c">machine dependent</div>
            <div>d<input type="radio"  name="61" value="d"> none of the mentioned</div>  
        </div>
        <div class="container">
            <div class="question"><span class="dot">02</span>What is the maximum possible length of an identifier?</div>
               
            <div>a<input type="radio" name="62" value="a">31 characters</div>
            <div>b<input type="radio" name="62" value="b">63 characters</div>
            <div>c<input type="radio" name="62" value="c">79 characters</div>
            <div>d<input type="radio" name="62" value="d">none of the mentioned</div>  
        </div>
        <div class="container">
        <div class="question"><span class="dot">03</span>Which of the following is invalid? </div>
        <div>a<input type="radio" name="63" value="a">_a = 1</div>
        <div>b<input type="radio" name="63" value="b">__a = 1</div>
        <div>c<input type="radio" name="63" value="c">__str__ = 1</div>
        <div>d<input type="radio" name="63" value="d">none of the mentioned</div>  
    </div>
        <div class="container">
        <div class="question"><span class="dot">04</span>All keywords in Python are in _________  </div>
        <div>a<input type="radio" name="64" value="a"> lower case</div>
        <div>b<input type="radio" name="64" value="b">UPPER CASE</div>
        <div>c<input type="radio" name="64" value="c"> Capitalized</div>
        <div>d<input type="radio" name="64" value="d">None of the mentioned</div> 
        </div> 
        <div class="container">
        <div class="question"><span class="dot">05</span>What is the output of print 0.1 + 0.2 == 0.3?</div>
     <div>a<input type="radio" name="65" value="a">True</div>
        <div>b<input type="radio" name="65" value="b">False</div>
        <div>c<input type="radio" name="65" value="c">Machine dependent</div>
        <div>d<input type="radio" name="65" value="d">Error</div> 
        </div> 
        <div class="container">
        <div class="question"><span class="dot">06</span>Which of the following is not a complex number</div>
        <div>a<input type="radio" name="66" value="a">k = 2 + 3j</div>
        <div>b<input type="radio" name="66" value="b">k = complex(2, 3)</div>
        <div>c<input type="radio" name="66" value="c">k = 2 + 3l</div>
        <div>d<input type="radio" name="66" value="d">k = 2 + 3J</div> 
        </div> 
        <div class="container">
        <div class="question"><span class="dot">07</span>What is the type of inf</div>
        <div>a<input type="radio" name="67" value="a">Boolean</div>
        <div>b<input type="radio" name="67" value="b"> Integer</div>
        <div>c<input type="radio" name="67" value="c">Float</div>
        <div>d<input type="radio" name="67" value="d">Complex</div> 
        </div> 
        <div class="container">
        <div class="question"><span class="dot">08</span>What will be the output of the following code? 
<pre>s = 'ABC'
    n = 1
    for c in s:
        print c * n,
        n += 1
</pre></div>
        <div>a<input type="radio" name="68" value="a">
<pre>
A
B
C
</pre>
</div>
        <div>b<input type="radio" name="68" value="b"> <pre> A B C</pre></div>
        <div>c<input type="radio" name="68" value="c">
<pre>
A
BB
CCC
</pre></div>
        <div>d<input type="radio" name="68" value="d"><pre>1 4 9</pre></div>
        </div>  
        <div class="container">
        <div class="question"><span class="dot">09</span>What does the following code print?
            <pre>
            fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
            print fibonacci[1:3]
        </pre>
           </div>
        <div>a<input type="radio" name="69" value="a"> [1, 1, 2, 3]</div>
        <div>b<input type="radio" name="69" value="b">[1, 2, 3]</div>
        <div>c<input type="radio" name="69" value="c">[1, 2]</div>
        <div>d<input type="radio" name="69" value="d">[1, 1, 2]</div> 
        </div> 
        <div class="container">
        <div class="question"><span class="dot">10</span>What will be the output of code?
        <pre>
a={5,4}
b={1,2,4,5}
print a&lt;b
</pre>
</div>  
<div>a<input type="radio" name="70" value="a"> {1,2}</div>
        <div>b<input type="radio" name="70" value="b">True</div>
        <div>c<input type="radio" name="70" value="c">False</div>
        <div>d<input type="radio" name="70" value="d">Invalid operation</div> 
    </div>       
            <input class="btn" type="submit">
        <%
            session.setAttribute("status", "true");
         %> 
    </form>
</div>

</body>
</html>