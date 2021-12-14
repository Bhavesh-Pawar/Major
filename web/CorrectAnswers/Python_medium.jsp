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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Zen+Old+Mincho&display=swap" rel="stylesheet">
    <link rel="icon" href="../favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <script src="https://code.jquery.com/jquery-3.6.0.slim.min.js"
        integrity="sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="../js/my_js.js"></script>
    <link rel="stylesheet" href="test.css">
    <style>
        body {
            font-family: 'Zen Old Mincho', serif;
        }
    </style>
    <script>
        window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
    </script>
</head>

<body background="../images/bg1.jpg">
    <div class="container-fluid">
        <ul class="nav nav-pills nav-fill">
            <li class="nav-item m-1">
                <img src="../images/logo.png" class="img-fluid" alt="">
            </li>
            <li class="nav-item m-1">
                <h1 class="text-center">Test Your Skills</h1>
            </li>
            <li class="nav-item m-1">
                <button class="btn" style="background-color: navy;"> <a href="../index.jsp" class="text-light">Home
                    </a></button>
            </li>
        </ul>
    </div>
    <div class="container">
        <div class="row justify-content-center">
            <h1> Correct Answers: Python_Medium</h1>
        </div>
        
        <div class="row m-3 correct">
            <div class="col-12">1</span>What does ~4 evaluate to?
            </div>
            <div class="col-12">a. -5</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">2</span>What does ~~~~~~5 evaluate to? </div>
            <div class="col-12">a. +5</div>
        </div>  
        <div class="row m-3 correct">      
        <div class="col-12">3</span>What is the result of round(0.5) – round(-0.5)? </div>
        <div class="col-12">c. 0.0</div>
    </div>
        <div class="row m-3 correct">
        <div class="col-12">4</span>What will be the output of above code?
            <pre>
import copy
a=[10,23,56,[78]]
b=copy.deepcopy(a)
a[3][0]=95
a[1]=34
print(b)   
</pre></div>
<div class="col-12">b. [10,23,56,[78]]</div>
</div>
<div class="row m-3 correct">
    <div class="col-12">5</span>What will be the output?
        <pre>
            values = [[3, 4, 5, 1], [33, 6, 1, 2]]
            
            v = values[0][0]
            for lst in values:
            for element in lst:
            if v > element:
            v = element
            
            print(v)
        </pre> </div>
        <div class="col-12">a. 1</div>
    </div>
    <div class="row m-3 correct">
        <div class="col-12">6</span>What will be the output of the code?
            <pre>
                print(min(max(False,-3,-4), 2,7))
            </pre>
        </div>
        <div class="col-12">b. False</div>
    </div>
    <div class="row m-3 correct">
        <div class="col-12">7</span>What will be the output of code
            <pre>
                L = [lambda x: x ** 2,lambda x: x ** 3,lambda x: x ** 4]
                for f in L:
                print(f(3),end=" ")
            </pre></div>
            
            <div class="col-12">c. 9 27 81</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">8</span>What will be the output</div>
        <pre>
            def change(i = 1, j = 2):
            i = i + j
            j = j + 1
            print(i, j)
            change(j = 1, i = 2)</pre>
            <div class="col-12">d. 3 2</div>  
        </div>
        <div class="row m-3 correct">
            <div class="col-12">9</span>What will be the Ouput of following code?</div>
            <pre>
                def foo(i, x=[]):
                x.append(x.append(i))
                return x
                for i in range(3):
                y = foo(i)
                print(y)
            </pre>
        <div class="col-12">c. [0, None, 1, None, 2, None]</div>
    </div>
    <div class="row m-3 correct">
        <div class="col-12"><span class="dot">10</span>What will be the output of the following Python code?
            <pre>
                import collections
                a=dict()
                a=collections.defaultdict(str)
                print(a['A'])
            </pre>
        </div>
        <div class="col-12">b. ` `</div>
    </div>        
</div>
</div>
</body>
</html>