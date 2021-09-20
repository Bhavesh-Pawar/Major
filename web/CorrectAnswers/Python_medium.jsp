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
            <td class="button button4"><a href="../index.jsp">Go to index page </a> </td>
        </tr>
      
        </table>
        <div id="question"> 
        <form action="get_medium_python.jsp" method="POST">
        <div class="container">
        <div class="question"><span class="dot">01</span>What does ~4 evaluate to?
        </div>
        <div>a<input type="radio"  name="71" value="a">-5</div>
        </div>
         <div class="container">
        <div class="question"><span class="dot">02</span>What does ~~~~~~5 evaluate to? </div>
        <div>a<input type="radio" name="72" value="a">+5</div>
        </div>  
         <div class="container">      
        <div class="question"><span class="dot">03</span>What is the result of round(0.5) – round(-0.5)? </div>
        <div>c<input type="radio" name="73" value="c">0.0</div>
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
        <div>b<input type="radio" name="74" value="b">[10,23,56,[78]]</div>
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
        </div>
        <div class="container">
        <div class="question"><span class="dot">06</span>What will be the output of the code?
<pre>
print(min(max(False,-3,-4), 2,7))
</pre>
</div>
        <div>b<input type="radio" name="76" value="b">False</div>
        </div>
        <div class="container">
        <div class="question"><span class="dot">07</span>What will be the output of code
<pre>
L = [lambda x: x ** 2,lambda x: x ** 3,lambda x: x ** 4]
for f in L:
    print(f(3),end=" ")
</pre></div>

        <div>c<input type="radio" name="77" value="c">9 27 81</div>
        </div>
        <div class="container">
        <div class="question"><span class="dot">08</span>What will be the output</div>
        <pre>
def change(i = 1, j = 2):
    i = i + j
    j = j + 1
    print(i, j)
change(j = 1, i = 2)</pre>
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
        <div>c<input type="radio" name="79" value="c">[0, None, 1, None, 2, None]</div>
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
        <div>b<input type="radio" name="80" value="b">‘ ‘</div>
        </div>        
</div>
</body>
</html>