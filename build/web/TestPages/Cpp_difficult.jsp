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
    <title>Cpp_difficult Question</title>
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
    <form action="get_difficult_cpp.jsp" method="POST">
        <div class="container">
        <div>1.Which of the following gives the name of the program if the second parameter to the main fucntion is char **argv?
            </div>
        <div>a<input type="radio" name="51" value="a">argv[3]</div>
        <div>b<input type="radio" name="51" value="b">argv[1]</div>
        <div>c<input type="radio" name="51" value="c">argv[0]</div>
        <div>d<input type="radio" name="51" value="d">argv[2]</div>  
    </div>
    <div class="container">
        <div>2.Which of the following syntax can be used to use a member of a namespace without including that namespace?</div>
        <div>a<input type="radio" name="52" value="a">namespace::member</div>
        <div>b<input type="radio" name="52" value="b">namespace->member</div>
        <div>c<input type="radio" name="52" value="c">namespace.member</div>
        <div>d<input type="radio" name="52" value="d">namespace~member<</div>  
    </div>
    <div class="container">
        <div>3.Which of the following statements are true about Catch handler? i) It must be placed immediately after try block T. ii) It can have multiple parameters. iii) There must be only one catch handler for every try block. iv) There can be multiple catch handler for a try block T. v) Generic catch handler can be placed anywhere after try block.</div>
        <div>a<input type="radio" name="53" value="a">Only i, iv, v</div>
        <div>b<input type="radio" name="53" value="b">Only i, ii, iii</div>
        <div>c<input type="radio" name="53" value="c"> Only i, iv</div>
        <div>d<input type="radio" name="3" value="d">Only i, ii</div>  
         </div>
         <div class="container">
        <div>4.A void pointer cannot point to which of these? </div>
        <div>a<input type="radio" name="54" value="a">Methods in c++</div>
        <div>b<input type="radio" name="54" value="b">Class member in c++</div>
        <div>c<input type="radio" name="54" value="c">Both A & B</div>
        <div>d<input type="radio" name="54" value="d">None of the above</div>  
         </div>
         <div class="container">
        <div>5.What will be the output of the following ?</div>
<pre>
#include&lt;<iostream.h> 
int main()
{
int x = 80; 
int y& = x;
x++;
cout << x << " " << --y;
return 0;
}
</pre>
        <div>a<input type="radio" name="55" value="a">The program will print the output 80 80.</div>
        <div>b<input type="radio" name="55" value="b">The program will print the output 81 80.</div>
        <div>c<input type="radio" name="55" value="c">The program will print the output 81 81.</div>
        <div>d<input type="radio" name="55" value="d">It will result in a compile time error.</div>  
</div>
<div class="container">
        <div>6.What will be the output of the following ?</div>
<pre>
    #include<iostream.h> 
int main()
{
int arr[] = {1, 2 ,3, 4, 5}; 
int &zarr = arr;
for(int i = 0; i <= 4; i++)
{
    arr[i] += arr[i];
}
for(i = 0; i <= 4; i++)
    cout<< zarr[i]; 
return 0; 
}
</pre>
        <div>a<input type="radio" name="56" value="a">The program will print the output 1 2 3 4 5.</div>
        <div>b<input type="radio" name="56" value="b">The program will print the output 2 4 6 8 10.</div>
        <div>c<input type="radio" name="56" value="c">The program will print the output 1 1 1 1 1.</div>
        <div>d<input type="radio" name="56" value="d">It will result in a compile time error.</div>  
</div>
         <div class="container">
        <div>7.What will be the output of the following ?</div>
<pre>
#include < stdio.h >  
using namespace std;  
int main()  
{  
int array[] = {10, 20, 30};  
cout << -2[array];  
return 0;  
} 
</pre>
        <div>a<input type="radio" name="57" value="a">-15</div>
        <div>b<input type="radio" name="57" value="b">-30</div>
        <div>c<input type="radio" name="57" value="c">Compiler error</div>
        <div>d<input type="radio" name="57" value="d">Garbage value</div>  
    </div>
        <div class="container">
        <div>8.Observer the given C++ program carefully and choose the correct output from the given options:

            Program</div>
<pre>
#include <iostream>  
#include <string>  
using namespace std;  
int main()  
{  
cout<<is_array<int>::value; // case A  
cout<<is_array<char[10]>::value; // case B  
cout<<is_array<string>::value;  // case c  
return 0;  
}  
</pre>
        <div>a<input type="radio" name="58" value="a">110</div>
        <div>b<input type="radio" name="58" value="b">001</div>
        <div>c<input type="radio" name="58" value="c">010</div>
        <div>d<input type="radio" name="58" value="d">None of the above</div>  
         </div>
        <div class="container">
            <div>9.Which of the following statement is true about the new and malloc?</div>
            I. The "new" is a type of operator while "malloc" is a kind of function <br>
            II. "new" invokes a constructor, whereas "malloc" does not invoke the constructor <br>
            III. "malloc" returns void pointer and also needed to typecast whereas "new" returns required the pointer                        
            <div>a<input type="radio" name="59" value="a"> Only I</div>
            <div>b<input type="radio" name="59" value="b">Both I and II</div>
            <div>c<input type="radio" name="59" value="c">I, II, III</div>
            <div>d<input type="radio" name="59" value="d"> None of the above</div>  
        </div>
        <div class="container"> 
        <div>10.Which one of the following statements correctly refers to the Delete and Delete[] in C++ programming language?           </div>
        <div>a<input type="radio" name="60" value="a"> Delete is syntactically correct although, if the Delete[] is used, it will obtain an error.</div>
        <div>b<input type="radio" name="60" value="b">The "Delete" is used for deleting the standard objects, while on the other hand, the "Delete[]" is used to delete the pointer objects</div>
        <div>c<input type="radio" name="60" value="c"> The "Delete" is a type of keyword, whereas the "Delete[]" is a type of identifier</div>
        <div>d<input type="radio" name="60" value="d">The "Delete" is used for deleting a single standard object, whereas the "Delete[]" is used for deleting an array of the multiple objects</div>  
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