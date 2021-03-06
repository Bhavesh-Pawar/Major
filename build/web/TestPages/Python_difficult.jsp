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
    <title>Python Difficult Question</title>
    <script>
        
 
        window.history.forward(); 
       function noBack() { 
           window.history.forward(); 
       } 
        document.onkeydown = function(e) 
        {
if(event.keyCode == 123) {
return false;
}
if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){
return false;
}
if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){
return false;
}
if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){
return false;
}
}

window.addEventListener('contextmenu', function (e) { 
  // do something here... 
  e.preventDefault(); 
}, false);
    </script>
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
    <form action="get_difficult_python.jsp" method="POST">
        <div class="container">
      
        <div>1.Forcing a variable type to become another type before accessing an appropriate function is called
</div>
        <div>a<input type="radio"  name="81" value="a">regression</div>
        <div>b<input type="radio"  name="81" value="b">recursion</div>
        <div>c<input type="radio"  name="81" value="c">conversion</div>
        <div>d<input type="radio"  name="81" value="d">coersion</div>  
    </div>
    <div class="container">
        <div>2.Which sorting algorithm is used in python?</div>
        <div>a<input type="radio" name="82" value="a">Shell Sort</div>
        <div>b<input type="radio" name="82" value="b">Quick Sort</div>
        <div>c<input type="radio" name="82" value="c">Merge Sort</div>
        <div>d<input type="radio" name="82" value="d">None of these</div>  
    </div>
    <div class="container">
        <div>3. What will be the output of the following code?
<pre>
    class A:

    def __init__(self):

        self.count=5

        self.count=count+1

a=A()

print(a.count)
</pre>
        </div>
        <div>a<input type="radio" name="83" value="a"> 5</div>
        <div>b<input type="radio" name="83" value="b">6</div>
        <div>c<input type="radio" name="83" value="c">0</div>
        <div>d<input type="radio" name="83" value="d">Error</div>  
    </div>
    <div class="container">
        <div>4. What will be the output of the following Python code if the system date is 18th June, 2017 (Sunday)?</div>
<pre>
tday=datetime.date.today()
print(tday.weekday())      
</pre>
        <div>a<input type="radio" name="84" value="a">6</div>
        <div>b<input type="radio" name="84" value="b">1</div>
        <div>c<input type="radio" name="84" value="c">0</div>
        <div>d<input type="radio" name="84" value="d">7</div>  
    </div>
    <div class="container">
        <div>5. What will be the output of the following code snippet?</div>
<pre>
    class Person:
    def __init__(self, id):
        self.id = id
sam = Person(100)
sam.__dict__['age'] = 49
print (sam.age + len(sam.__dict__))
</pre>
        <div>a<input type="radio" name="85" value="a">1</div>
        <div>b<input type="radio" name="85" value="b">2</div>
        <div>c<input type="radio" name="85" value="c">49</div>
        <div>d<input type="radio" name="85" value="d">50</div>  
        <div>e<input type="radio" name="85" value="e">51</div>  
    </div>
    <div class="container">
        <div>6.
<pre>
class A:
    def __init__(self, i = 0):
        self.i = i

class B(A):
    def __init__(self, j = 0):
        self.j = j

def main():
    b = B()
    print(b.i)
    print(b.j)

main()
</pre>
        </div>
        <div>a<input type="radio" name="86" value="a">Class B inherits A, but the data field ?i? in A is not inherited.</div>
        <div>b<input type="radio" name="86" value="b">Class B inherits A, thus automatically inherits all data fields in A.</div>
        <div>c<input type="radio" name="86" value="c">When you create an object of B, you have to pass an argument such as B(5).</div>
        <div>d<input type="radio" name="86" value="d">The data field ?j? cannot be accessed by object b.</div>  
    </div> 
    <div class="container">
        <div>7.What will be the output of the following code snippet?</div>
<pre>
class A:
    def __init__(self):
        self.calcI(30)
        print("i from A is", self.i)

    def calcI(self, i):
        self.i = 2 * i;

class B(A):
    def __init__(self):
        super().__init__()
        
    def calcI(self, i):
        self.i = 3 * i;

b = B()
</pre>
        <div>a<input type="radio" name="87" value="a">The __init__ method of only class B gets invoked.</div>
        <div>b<input type="radio" name="87" value="b">The __init__ method of class A gets invoked and it displays ?i from A is 0?</div>
        <div>c<input type="radio" name="87" value="c">The __init__ method of class A gets invoked and it displays ?i from A is 60?</div>
        <div>d<input type="radio" name="87" value="d">The __init__ method of class A gets invoked and it displays ?i from A is 90?</div>  
    </div>
    <div class="container">
        <div>8. Which of the following statements incorrectly define pickling in python?</div>

        <div>a<input type="radio" name="88" value="a"> It is a process to convert a Python object into a byte stream.</div>
        <div>b<input type="radio" name="88" value="b">It is a process to convert a byte stream to Python object</div>
        <div>c<input type="radio" name="88" value="c">It is done using two methods dump and load.</div>
        <div>d<input type="radio" name="88" value="d">Serialization is an alternate name for pickling.    </div>  
    </div>
    <div class="container">
        <div>9.What is the output of the code shown below?
<pre>
def f(x):
    yield x+1
    print("test")
    yield x+2
g=f(9)
</pre> </div>
        <div>a<input type="radio" name="89" value="a">Error</div>
        <div>b<input type="radio" name="89" value="b"> test</div>
        <div>c<input type="radio" name="89" value="c">test1012</div>
        <div>d<input type="radio" name="89" value="d">No output</div>  
    </div>
    <div class="container">
        <div>10.What will be the ouput of following code?</div>
<pre>
def multipliers():
    return [lambda x : i * x for i in range(4)]
      
print([m(2) for m in multipliers()])
</pre>
        <div>a<input type="radio" name="90" value="a">[2,2,2,2]</div>
        <div>b<input type="radio" name="90" value="b">[0,2,4,6]</div>
        <div>c<input type="radio" name="90" value="c">[6,6,6,6]</div>
        <div>d<input type="radio" name="90" value="d">None of the above</div>  
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