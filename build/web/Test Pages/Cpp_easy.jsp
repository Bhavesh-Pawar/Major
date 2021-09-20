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
    <title>C++ Easy Question</title>
    <link rel="stylesheet" type="text/css" href="test.css">
    <script>
 function openNav() {
          document.getElementById("mySidebar").style.width = "250px";
          document.getElementById("main").style.marginLeft = "250px";
        }
        
        function closeNav() {
          document.getElementById("mySidebar").style.width = "0";
          document.getElementById("main").style.marginLeft= "0";
        }
        window.history.forward(); 
       function noBack() { 
           window.history.forward(); 
       } 
</script>
    </head>
<body background="images/bg1.jpg">
    <div >
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
    <form action="get_easy_cpp.jsp" method="POST">
        <div class="container">
        <div>1.What is size of int data type in cpp?</div>
        <div>a<input type="radio" name="31" value="a">2 Bytes</div>
        <div>b<input type="radio" name="31" value="b">4 Bytes</div>
        <div>c<input type="radio" name="31" value="c">1 Byte</div>
        <div>d<input type="radio" name="31" value="d">Depends on Compiler</div>  
    </div>
    <div class="container">
        <div>2.What following operator is called "?:"</div>
        <div>a<input type="radio" name="32" value="a"> Scope Resolution Operator</div>
        <div>b<input type="radio" name="32" value="b">Conditional Operator</div>
        <div>c<input type="radio" name="32" value="c">Ternary Operator</div>
        <div>d<input type="radio" name="32" value="d">if else o/p</div>  
    </div>
    <div class="container">
        <div>3.What is currect syntax of for loop?</div>
        <div>a<input type="radio" name="33" value="a">for(initialization;condition; increment/decrement)</div>
        <div>b<input type="radio" name="33" value="b">for(increment/decrement; initialization; condition)</div>
        <div>c<input type="radio" name="33" value="c">for(initialization, condition, increment/decrement</div>
        <div>d<input type="radio" name="33" value="d">None of These</div>  
    </div>
    <div class="container">
        <div>4.Can we overload functions in C++?</div>
        <div>a<input type="radio" name="34" value="a"> Yes</div>
        <div>b<input type="radio" name="34" value="b">No</div>
        <div>c<input type="radio" name="34" value="c">Compilation Error</div>
        <div>d<input type="radio" name="34" value="d">Runtime Error</div>  
    </div>    
    <div class="container">
        <div>5.Which operator has highest precedence in * / % ?</div>
        <div>a<input type="radio" name="35" value="a"> *</div>
        <div>b<input type="radio" name="35" value="b"> /</div>
        <div>c<input type="radio" name="35" value="c"> % </div>
        <div>d<input type="radio" name="35" value="d"> all have same precedence</div>  
    </div>
    <div class="container">
        <div>6.What is the full form of oop</div>
        <div>a<input type="radio" name="36" value="a">Object oriented programming</div>
        <div>b<input type="radio" name="36" value="b">Oriented object programming</div>
        <div>c<input type="radio" name="36" value="c">Office oriented programming</div>
        <div>d<input type="radio" name="36" value="d">office objective programming</div>  
    </div>
    <div class="container">
        <div>7.Can a Structure contain pointer to itself?</div>
        <div>a<input type="radio" name="37" value="a">Yes</div>
        <div>b<input type="radio" name="37" value="b">No</div>
        <div>c<input type="radio" name="37" value="c">Compilation Error</div>
        <div>d<input type="radio" name="37" value="d">Runtime Error</div>  
    </div>
    <div class="container">
        <div>8.What should be the location of "using namespace std;" in c++ code?</div>
        <div>a<input type="radio" name="38" value="a">Before all #include</div>
        <div>b<input type="radio" name="38" value="b">After #include&lt;iostream&gt; </div>
        <div>c<input type="radio" name="38" value="c">In middle of #includes</div>
        <div>d<input type="radio" name="38" value="d">After all #inludes</div>  
        </div>
        <div class="container">    
        <div>9.What do you understand by GUI?</div>
 <div>a<input type="radio" name="39" value="a">Uses buttons, menus, and icons</div>
        <div>b<input type="radio" name="39" value="b">Should be easy for a user to manipulate</div>
        <div>c<input type="radio" name="39" value="c">Stands for Graphic Use Interaction</div>
        <div>d<input type="radio" name="39" value="d"> Both A and B</div>  
        </div>
        <div class="container">
        <div>10.A constructor is a special type of?</div>
        <div>a<input type="radio" name="40" value="a">class</div>
        <div>b<input type="radio" name="40" value="b">field</div>
        <div>c<input type="radio" name="40" value="c">function</div>
        <div>d<input type="radio" name="40" value="d"> property</div>  
         </div>
        <input class="btn" type="submit">
        <%
            session.setAttribute("status", "true");
         %> 
    </form>
</div>
</body>
</html>