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
    <title>C++ Medium Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">
   
    </head>
<body background="../images/bg1.jpg">
    <div>
       
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
    <form action="get_medium_cpp.jsp" method="POST">
        <div class="container">
        <div>1.What will be the output of the i and j ? </div>
<pre>
    int i=5,j;
    j= ++i + ++i;
</pre>
       <div>a<input type="radio" name="41" value="a">i=7 j=12</div>
        <div>b<input type="radio" name="41" value="b">i=7 j=13</div>
        <div>c<input type="radio" name="41" value="c">i=7 j=14</div>
        <div>d<input type="radio" name="41" value="d">None of these</div>  
        </div>
        <div class="container">
        <div>2.Delaration a pointer more than once may cause ____</div>
        <div>a<input type="radio" name="42" value="a">Error</div>
        <div>b<input type="radio" name="42" value="b">Abort</div>
        <div>c<input type="radio" name="42" value="c">Trap</div>
        <div>d<input type="radio" name="42" value="d">Null</div>  
    </div>
    <div class="container">
        <div>3.In CPP, members of a class are ______ by default.</div>
        <div>a<input type="radio" name="43" value="a">Public</div>
        <div>b<input type="radio" name="43" value="b">Private</div>
        <div>c<input type="radio" name="43" value="c">Protected</div>
        <div>d<input type="radio" name="43" value="d">Static</div>  
    </div>
    <div class="container">
        <div>4.Which classes allow primitive types to be accessed as objects?</div>
        <div>a<input type="radio" name="44" value="a">Storage</div>
        <div>b<input type="radio" name="44" value="b">Virtual</div>
        <div>c<input type="radio" name="44" value="c">Friend</div>
        <div>d<input type="radio" name="44" value="d">Wrapper</div>  
    </div>
    <div class="container">
        <div>5.When is std::bad_alloc exception thrown?</div>
        <div>a<input type="radio" name="45" value="a">When new operator cannot allocate memory</div>
        <div>b<input type="radio" name="45" value="b">When alloc function fails</div>
        <div>c<input type="radio" name="45" value="c">When type requested for new operation is considered bad, thisexception is thrown</div>
        <div>d<input type="radio" name="45" value="d">When delete operator cannot delete the allocated (corrupted) object</div>  
    </div>
    <div class="container">
        <div>6.Which of the following keyword supports dynamic method resolution?</div>
        <div>a<input type="radio" name="46" value="a">abstract</div>
        <div>b<input type="radio" name="46" value="b">Virtual</div>
        <div>c<input type="radio" name="46" value="c">Dynamic</div>
        <div>d<input type="radio" name="46" value="d">Typeid</div>  
    </div>
    <div class="container">
        <div>7.Which one of the following is not a fundamental data type in C++ </div>
        <div>a<input type="radio" name="47" value="a"> float</div>
        <div>b<input type="radio" name="47" value="b">string</div>
        <div>c<input type="radio" name="47" value="c">int</div>
        <div>d<input type="radio" name="47" value="d">wchar_t</div>
        </div>
        <div class="container"> 
        <div>8.The programming language that has the ability to create new data types is called___.</div>
        <div>a<input type="radio" name="48" value="a"> Overloaded</div>
        <div>b<input type="radio" name="48" value="b">Encapsulated</div>
        <div>c<input type="radio" name="48" value="c">Reprehensible</div>
        <div>d<input type="radio" name="48" value="d">Extensible</div>  
        </div>
        <div class="container">
        <div>9.Which of the following is not a valid conditional inclusions in
            preprocessor directives </div>
        <div>a<input type="radio" name="49" value="a">#ifdef</div>
        <div>b<input type="radio" name="49" value="b">#ifundef</div>
        <div>c<input type="radio" name="49" value="c">#endif</div>
        <div>d<input type="radio" name="49" value="d">#elif</div>  
        </div>
        <div class="container">
        <div>10.The output of this program is 
<pre>
    int a = 10;
    void main()
    {
     int a = 20;
     cout << a << ::a;
    }
</pre> </div>
        <div>a<input type="radio" name="50" value="a">Syntax error</div>
        <div>b<input type="radio" name="50" value="b"> 10 20</div>
        <div>c<input type="radio" name="50" value="c"> 20 10</div>
        <div>d<input type="radio" name="50" value="d">20 20</div>  
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