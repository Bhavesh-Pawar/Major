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
                <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>
            </tr>
            
            </table>
        <div class="correct"> <h1> Correct Answers: C_Difficult</h1> </div>
    <div id="question"> 
             <div class="container">
            <div>1.What type of array is generally generated in Command-line argument?</div>
            <div>b. Jagged Array</div>      
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

        <div>a. PIP </div>
        
    </div>
    <div class="container">
        <div>3.What does the following declaration mean? </div>
<pre>
int (*ptr)[10];
</pre>            
        
        <div>b. ptr is a pointer to an array of 10 integers</div>
       
    </div>
    <div class="container">
        <div>4.Which of the following are two types of branching?</div>
        <div>c. Multi-way & three way</div>  
    </div>
    <div class="container">
        <div>5.A structure declaration without any variables describe ____</div>
       <div>b. Template</div>  
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
        <div>a. 15</div> 
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
        <div>a. hey hello how Segmentation fault</div>
          
    </div>
    <div class="container">
        <div>8.Which string should be used inside scanf() to get strings after space?</div>
        <div>b. %[^\n]%*c</div>
         
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
        <div>c. 2 97</div>
         
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
        
        <div>c. 6</div>
</div>
       
    
    </div>
</body>
</html>