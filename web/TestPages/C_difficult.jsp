
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
    <title>C Difficult Question</title>
    <link rel="stylesheet" type="text/css" href="./test.css">
    <script>
        
                 window.history.forward(); 
                function noBack() { 
                    window.history.forward(); 
                } 
                window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
        </script>
    </head>
    <body background="../images/bg1.jpg">
    <div >
       
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
    <form action="get_difficult_c.jsp" method="POST">
        <div class="container">
            <div>1.What type of array is generally generated in Command-line argument?</div>
            <div>a<input type="radio" name="21" value="a">MultiDimensional Array</div>
            <div>b<input type="radio" name="21" value="b">Jagged Array</div>
            <div>c<input type="radio" name="21" value="c">2-Dimensional Array</div>
            <div>d<input type="radio" name="21" value="d">Single Dimensional Array
            </div>      
        </div>
        <div class="container">
        <div>2.What will be output of the following program  if argument passed to command lines are  :
             Paper Ink Pen
<pre>

int main(int argc, char ** argv){
 char **items;
 int j = 3, i;
 items = argv;
 for(i = 1; (i%4); i++){
  int **p = &items[j];
  printf("%c", **p);
  j--;
 }
 return 0;
}

</pre></div>

        <div>a<input type="radio" name="22" value="a">PIP </div>
        <div>b<input type="radio" name="22" value="b">Pen</div>
        <div>c<input type="radio" name="22" value="c"> Pap</div>
        <div>d<input type="radio" name="22" value="d">Ink</div>  
    </div>
    <div class="container">
        <div>3.What does the following declaration mean? </div>
<pre>
int (*ptr)[10];
</pre>            
        <div>a<input type="radio" name="23" value="a"> ptr is array of pointers to 10 integers</div>
        <div>b<input type="radio" name="23" value="b">ptr is a pointer to an array of 10 integers</div>
        <div>c<input type="radio" name="23" value="c">ptr is an array of 10 integers</div>
        <div>d<input type="radio" name="23" value="d">ptr is an pointer to array</div>  
    </div>
    <div class="container">
        <div>4.Which of the following are two types of branching?</div>
        <div>a<input type="radio" name="24" value="a">Two-way and multi-way</div>
        <div>b<input type="radio" name="24" value="b">Two way or multi-way</div>
        <div>c<input type="radio" name="24" value="c">Multi-way & three way</div>
        <div>d<input type="radio" name="24" value="d">Two-way& four way</div>  
    </div>
    <div class="container">
        <div>5.A structure declaration without any variables describe ____</div>
        <div>a<input type="radio" name="25" value="a">Wizard</div>
        <div>b<input type="radio" name="25" value="b">Template</div>
        <div>c<input type="radio" name="25" value="c">Shape of a structure</div>
        <div>d<input type="radio" name="25" value="d">Both (a) & (b)</div>  
    </div>
    <div class="container">
        <div>6. How many times the below loop will be executed?
 </div>
        
<pre>                  
int main()
{
 int x, y;
 for(x=5;x>=1;x--)
 {
  for(y=1;y<=x;y++)
   printf("%d\n",y);
 }
}
</pre>  
        <div>a<input type="radio" name="26" value="a"> 15</div>
        <div>b<input type="radio" name="26" value="b"> 11</div>
        <div>c<input type="radio" name="26" value="c">10</div>
        <div>d<input type="radio" name="26" value="d">13</div>  
    </div>
    <div class="container">
        <div>7.Guess the output?</div>
<pre>
#include <stdio.h>
    void main()
    {
        char *a[10] = {"hi", "hello", "how"};
        int i = 0, j = 0;
        a[0] = "hey";
        for (i = 0;i < 10; i++)
        printf("%s\n", a[i]);
    }
</pre>
        <div>a<input type="radio" name="27" value="a">hey hello how Segmentation fault</div>
        <div>b<input type="radio" name="27" value="b">hi hello how Segmentation fault</div>
        <div>c<input type="radio" name="27" value="c">hi hello how followed by 7 null values</div>
        <div>d<input type="radio" name="27" value="d">Compilation error</div>  
    </div>
    <div class="container">
        <div>8.Which string should be used inside scanf() to get strings after space?</div>
        <div>a<input type="radio" name="28" value="a">%[^\n*]%c</div>
        <div>b<input type="radio" name="28" value="b">%[^\n]%*c</div>
        <div>c<input type="radio" name="28" value="c">%[^\t]%c</div>
        <div>d<input type="radio" name="28" value="d">%[^\t]%*c</div>  
    </div>
    <div class="container">
        <div>9.Guess the output?</div>
<pre>
#include <stdio.h>
    int main()
    {
        int i = 97, *p = &i;
        foo(&i);
        printf("%d ", *p);
    }
    void foo(int *p)
    {
        int j = 2;
        p = &j;
        printf("%d ", *p);
    }
</pre>
        <div>a<input type="radio" name="29" value="a">2 2</div>
        <div>b<input type="radio" name="29" value="b">2 24</div>
        <div>c<input type="radio" name="29" value="c"> 2 97</div>
        <div>d<input type="radio" name="29" value="d"> Compilation error</div>  
    </div>
    <div class="container">

        <div>10.What will be the output of the following code?
        </div>
<pre>
void main()
{
int k = 5;
int *p = &k;
int **m = &p;
**m = 6;
printf("%d\n", k);
}
</pre>
        <div>a<input type="radio" name="30" value="a">4</div>
        <div>b<input type="radio" name="30" value="b">7</div>
        <div>c<input type="radio" name="30" value="c">6</div>
        <div>d<input type="radio" name="30" value="d">Compilation error</div>     
    </div>
        <input class="btn" type="submit">
        <%
            session.setAttribute("status", "true");
         %> 
    </form>
</div>
</body>
</html>