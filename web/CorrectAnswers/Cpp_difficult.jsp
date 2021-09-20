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
                <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>
            </tr>

            </table>
            <div class="correct"> <h1> Correct Answers: C++_Difficult</h1> </div>

    <div id="question">        
        <div class="container">
        <div>1.Which of the following gives the name of the program if the second parameter to the main fucntion is char **argv?
        </div>
        <div>c<input type="radio" name="51" value="c">argv[0]</div>
    </div>
    <div class="container">
        <div>2.Which of the following syntax can be used to use a member of a namespace without including that namespace?</div>
        <div>a<input type="radio" name="52" value="a">namespace::member</div>
       
    </div>
    <div class="container">
        <div>3.Which of the following statements are true about Catch handler? i) It must be placed immediately after try block T. ii) It can have multiple parameters. iii) There must be only one catch handler for every try block. iv) There can be multiple catch handler for a try block T. v) Generic catch handler can be placed anywhere after try block.</div>
       
        <div>c<input type="radio" name="53" value="c"> Only i, iv</div>
         </div>
         <div class="container">
        <div>4.A void pointer cannot point to which of these? </div>
       
        <div>b<input type="radio" name="54" value="b">Class member in c++</div>
       
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
        <div>b<input type="radio" name="57" value="b">-30</div>
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
        <div>c<input type="radio" name="58" value="c">010</div>
         </div>
        <div class="container">
            <div>9.Which of the following statement is true about the new and malloc?</div>
            I. The "new" is a type of operator while "malloc" is a kind of function <br>
            II. "new" invokes a constructor, whereas "malloc" does not invoke the constructor <br>
            III. "malloc" returns void pointer and also needed to typecast whereas "new" returns required the pointer                        
            <div>c<input type="radio" name="59" value="c">I, II, III</div>
        </div>
        <div class="container"> 
        <div>10.Which one of the following statements correctly refers to the Delete and Delete[] in C++ programming language?           </div>
        <div>d<input type="radio" name="60" value="d">The "Delete" is used for deleting a single standard object, whereas the "Delete[]" is used for deleting an array of the multiple objects</div>  
        </div>
       
</div>
</body>
</html>