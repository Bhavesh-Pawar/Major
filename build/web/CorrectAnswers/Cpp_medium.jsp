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
                <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>
                 </tr>
            </table>
            <div class="correct"> <h1> Correct Answers: C++_Medium</h1> </div>

          <div id="question"> 
        <div class="container">
        <div>1.What will be the output of the i and j ? </div>
<pre>
    int i=5,j;
    j= ++i + ++i;
</pre>
        <div>c<input type="radio" name="41" value="c">i=7 j=14</div>
        </div>
        <div class="container">
        <div>2.Delaration a pointer more than once may cause ____</div>
        <div>c<input type="radio" name="42" value="c">Trap</div>
    </div>
    <div class="container">
        <div>3.In CPP, members of a class are ______ by default.</div>
        <div>b<input type="radio" name="43" value="b">Private</div>
    </div>
    <div class="container">
        <div>4.Which classes allow primitive types to be accessed as objects?</div>
        <div>b<input type="radio" name="44" value="b">Virtual</div>
    </div>
    <div class="container">
        <div>5.When is std::bad_alloc exception thrown?</div>
        <div>a<input type="radio" name="45" value="a">When new operator cannot allocate memory</div>
    </div>
    <div class="container">
        <div>6.Which of the following keyword supports dynamic method resolution?</div>
        <div>a<input type="radio" name="46" value="a">abstract</div>
    </div>
    <div class="container">
        <div>7.Which one of the following is not a fundamental data type in C++ </div>
        <div>a<input type="radio" name="47" value="a"> float</div>
        </div>
        <div class="container"> 
        <div>8.The programming language that has the ability to create new data types is called___.</div>
        <div>d<input type="radio" name="48" value="d">Extensible</div>  
        </div>
        <div class="container">
        <div>9.Which of the following is not a valid conditional inclusions in
            preprocessor directives </div>
        <div>a<input type="radio" name="49" value="a">#ifdef</div>
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
        <div>c<input type="radio" name="50" value="c"> 20 10</div>
         </div>
       
</div>
</body>
</html>