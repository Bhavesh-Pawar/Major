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
    <title>Python Medium Question</title>
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
        <form action="get_medium_python.jsp" method="POST">
        <div class="container">
        <div class="question"><span class="dot">01</span>What does ~4 evaluate to?
        </div>
        <div>a<input type="radio"  name="71" value="a">-5</div>
        <div>b<input type="radio"  name="71" value="b"> -4</div>
        <div>c<input type="radio"  name="71" value="c">-3</div>
        <div>d<input type="radio"  name="71" value="d">+3</div> 
        </div>
         <div class="container">
        <div class="question"><span class="dot">02</span>What does ~~~~~~5 evaluate to? </div>
        <div>a<input type="radio" name="72" value="a">+5</div>
        <div>b<input type="radio" name="72" value="b">-11</div>
        <div>c<input type="radio" name="72" value="c">+11</div>
        <div>d<input type="radio" name="72" value="d">-5</div> 
        </div>  
         <div class="container">      
        <div class="question"><span class="dot">03</span>What is the result of round(0.5) – round(-0.5)? </div>
        <div>a<input type="radio" name="73" value="a">1.0</div>
        <div>b<input type="radio" name="73" value="b">2.0</div>
        <div>c<input type="radio" name="73" value="c">0.0</div>
        <div>d<input type="radio" name="73" value="d">None of the mentioned</div> 
        </div>
        <div class="container">
        <div class="question"><span class="dot">04</span>What will be the output of above code?
<pre>
import copy
a=[10,23,56,[78]]
b=copy.deepcopy(a)
a[3][0]=95
a[1]=34
print(b)   
</pre></div>
        <div>a<input type="radio" name="74" value="a">[10,34,56,[95]].</div>
        <div>b<input type="radio" name="74" value="b">[10,23,56,[78]]</div>
        <div>c<input type="radio" name="74" value="c">[10,23,56,[95]]</div>
        <div>d<input type="radio" name="74" value="d">[10,34,56,[78]]</div>  
        </div>
        <div class="container">
        <div class="question"><span class="dot">05</span>What will be the output?
<pre>
values = [[3, 4, 5, 1], [33, 6, 1, 2]]
    
v = values[0][0]
for lst in values:
    for element in lst:
        if v > element:
            v = element
    
print(v)
</pre> </div>
        <div>a<input type="radio" name="75" value="a">1</div>
        <div>b<input type="radio" name="75" value="b">3</div>
        <div>c<input type="radio" name="75" value="c">5</div>
        <div>d<input type="radio" name="75" value="d">6</div>  
        </div>
        <div class="container">
        <div class="question"><span class="dot">06</span>What will be the output of the code?
<pre>
print(min(max(False,-3,-4), 2,7))
</pre>
</div>
        <div>a<input type="radio" name="76" value="a">2</div>
        <div>b<input type="radio" name="76" value="b">False</div>
        <div>c<input type="radio" name="76" value="c">-3</div>
        <div>d<input type="radio" name="76" value="d">-4</div> 
        </div>
        <div class="container">
        <div class="question"><span class="dot">07</span>What will be the output of code
<pre>
L = [lambda x: x ** 2,lambda x: x ** 3,lambda x: x ** 4]
for f in L:
    print(f(3),end=" ")
</pre></div>

        <div>a<input type="radio" name="77" value="a">27 81 343</div>
        <div>b<input type="radio" name="77" value="b"> 6 9 12 </div>
        <div>c<input type="radio" name="77" value="c">9 27 81</div>
        <div>d<input type="radio" name="77" value="d">None of the mentioned </div>  
        </div>
        <div class="container">
        <div class="question"><span class="dot">08</span>What will be the output</div>
        <pre>
def change(i = 1, j = 2):
    i = i + j
    j = j + 1
    print(i, j)
change(j = 1, i = 2)</pre>
        <div>a<input type="radio" name="78" value="a">An exception is thrown because of
            conflicting values</div>
        <div>b<input type="radio" name="78" value="b">1 2</div>
        <div>c<input type="radio" name="78" value="c">3 3</div>
        <div>d<input type="radio" name="78" value="d">3 2</div>  
        </div>
        <div class="container">
        <div class="question"><span class="dot">09</span>What will be the Ouput of following code?</div>
<pre>
def foo(i, x=[]):
    x.append(x.append(i))
    return x
    for i in range(3):
        y = foo(i)
    print(y)
</pre>
       <div>a<input type="radio" name="79" value="a">[[[0]], [[[0]], [1]], [[[0]], [[[0]], [1]], [2]]]</div>
        <div>b<input type="radio" name="79" value="b">[[0], [[0], 1], [[0], [[0], 1], 2]]</div>
        <div>c<input type="radio" name="79" value="c">[0, None, 1, None, 2, None]</div>
        <div>d<input type="radio" name="79" value="d">[[[0]], [[[0]], [1]], [[[0]], [[[0]], [1]], [2]]]</div>  
        </div>
        <div class="container">
        <div class="question"><span class="dot">10</span>What will be the output of the following Python code?
<pre>
import collections
a=dict()
a=collections.defaultdict(str)
print(a['A'])
</pre>
 </div>
        <div>a<input type="radio" name="80" value="a">An exception is thrown since the dictionary
            is empty</div>
        <div>b<input type="radio" name="80" value="b">? ?</div>
        <div>c<input type="radio" name="80" value="c">?A?</div>
        <div>d<input type="radio" name="80" value="d">0</div>  
        </div>        
                <button class="btn" value="submit">Submit</button>
                <%
            session.setAttribute("status", "true");
         %>
    </form>
</div>

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