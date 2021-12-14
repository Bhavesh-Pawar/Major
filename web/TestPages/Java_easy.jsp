<%
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("../sign_in.html");
    }
%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Easy Question</title>
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
        </tr>
        </table>
        <script>
     
             window.history.forward(); 
            function noBack() { 
                window.history.forward(); 
            } 
    </script>
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
    <form action="get_easy_java.jsp" name="C" id="C" method="POST">
        <div class="container">
        <div>1. Which of the following is not assignment operator?</div>
        <div>a<input type="radio" name="91" value="a"> += </div>
        <div>b<input type="radio" name="91" value="b"> = =</div>
        <div>c<input type="radio" name="91" value="c"> %= </div>
        <div>d<input type="radio" name="91" value="d"> =</div>  
        </div>
        <div class="container">
        <div>2. The java interpreter uses ____________ method before any objects are created.</div>
        <div>a<input type="radio" name="92" value="a"> Class </div>
        <div>b<input type="radio" name="92" value="b"> Main </div>
        <div>c<input type="radio" name="92" value="c"> Constructor </div>
        <div>d<input type="radio" name="92" value="d"> All of above </div>  
        </div>
        <div class="container">
        <div>3. Java does not support ______________.</div>
        <div>a<input type="radio" name="93" value="a"> Operator overloading </div>
        <div>b<input type="radio" name="93" value="b"> Global variable</div>
        <div>c<input type="radio" name="93" value="c"> Multiple inheritance</div>
        <div>d<input type="radio" name="93" value="d"> All of above</div>  
        </div>
        <div class="container">
        <div>4. What keyword is used in Java to define a constant?</div>
        <div>a<input type="radio" name="94" value="a"> static</div>
        <div>b<input type="radio" name="94" value="b"> final</div>
        <div>c<input type="radio" name="94" value="c"> abstract</div>
        <div>d<input type="radio" name="94" value="d"> private</div>  
        </div>
        <div class="container">
        <div>5. ?Use of undeclared variables? is the ______________ type of error.</div>
        <div>a<input type="radio" name="95" value="a"> Logical</div>
        <div>b<input type="radio" name="95" value="b"> Exception</div>
        <div>c<input type="radio" name="95" value="c"> Run-time</div>
        <div>d<input type="radio" name="95" value="d"> Compile-time</div>  
        </div>
        <div class="container">
        <div>6.  _____ is used to find and fix bugs in the Java programs.</div>
        <div>a<input type="radio" name="96" value="a"> JVM</div>
        <div>b<input type="radio" name="96" value="b"> JRE</div>
        <div>c<input type="radio" name="96" value="c"> JDK</div>
        <div>d<input type="radio" name="96" value="d"> JDB</div>  
        </div>
        <div class="container">
        <div>7. What is the return type of the hashCode() method in the Object class?</div>
        <div>a<input type="radio" name="97" value="a"> Object</div>
        <div>b<input type="radio" name="97" value="b"> int</div>
        <div>c<input type="radio" name="97" value="c"> long</div>
        <div>d<input type="radio" name="97" value="d"> void</div>  
        </div>
        <div class="container">
        <div>8. Which of the following is a reserved keyword in Java?</div>
        <div>a<input type="radio" name="98" value="a"> object</div>
        <div>b<input type="radio" name="98" value="b"> strictfp</div>
        <div>c<input type="radio" name="98" value="c"> main</div>
        <div>d<input type="radio" name="98" value="d"> system</div>  
        </div>
        <div class="container">
        <div>9. Given, ArrayList list = new ArrayList();  <br>What is the initial quantity of the ArrayList list?</div>
        <div>a<input type="radio" name="99" value="a"> 5</div>
        <div>b<input type="radio" name="99" value="b"> 10</div>
        <div>c<input type="radio" name="99" value="c"> 0</div>
        <div>d<input type="radio" name="99" value="d"> 100</div>  
        </div>
        <div class="container">
        <div>10. What is the result of the following program?<br>

public static synchronized void main(String[] args) throws <br> 
InterruptedException {  <br>
     Thread f = new Thread(); <br> 
      f.start();  <br>
      System.out.print("A");  <br>
      f.wait(1000);  <br>
      System.out.print("B"); <br> 
}  </div>
        <div>a<input type="radio" name="100" value="a"> It prints A and B with a 1000 seconds delay between them</div>
        <div>b<input type="radio" name="100" value="b"> It only prints A and exits</div>
        <div>c<input type="radio" name="100" value="c"> It only prints B and exits</div>
        <div>d<input type="radio" name="100" value="d"> A will be printed, and then an exception is thrown.</div>  
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