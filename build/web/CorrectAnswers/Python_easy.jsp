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
    <title>Python Easy Question</title>
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
            <h1> Correct Answers: Python_Easy</h1>

        </div>
        
    
        <div class="row m-3 correct">
            <div class="col-12">1</span>Is Python case sensitive when dealing with identifiers?</div>
            <div class="col-12">a. yes</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">2</span>What is the maximum possible length of an identifier?</div>
            
            <div class="col-12">d. none of the mentioned</div>  
        </div>
        <div class="row m-3 correct">
            <div class="col-12">3</span>Which of the following is invalid? </div>
            <div class="col-12">d. none of the mentioned</div>  
        </div>
        <div class="row m-3 correct">
            <div class="col-12">4</span>All keywords in Python are in _________  </div>
            <div class="col-12">d. None of the mentioned</div> 
        </div> 
        <div class="row m-3 correct">
            <div class="col-12">5</span>What is the output of print 0.1 + 0.2 == 0.3?</div>
            <div class="col-12">b. False</div>
        </div> 
        <div class="row m-3 correct">
            <div class="col-12">6</span>Which of the following is not a complex number</div>
            <div class="col-12">c. k = 2 + 3l</div>
        </div> 
        <div class="row m-3 correct">
        <div class="col-12">7</span>What is the type of inf</div>
        <div class="col-12">c. Float</div>
        </div> 
        <div class="row m-3 correct">
        <div class="col-12">8</span>What will be the output of the following code? 
            <pre>s = 'ABC'
                n = 1
                for c in s:
                print c * n,
                n += 1
            </pre></div>
            
            <div class="col-12">c.
                <pre>
                    A
                    BB
                    CCC
                </pre></div>
       </div>  
       <div class="row m-3 correct">
           <div class="col-12">9</span>What does the following code print?
            <pre>
                fibonacci = [1, 1, 2, 3, 5, 8, 13, 21]
                print fibonacci[1:3]
            </pre>
        </div>
        <div>c. [1, 2]</div>
    </div> 
    <div class="row m-3 correct">
        <div class="col-12"><span class="dot">10</span>What will be the output of code?
            <pre>
                a={5,4}
                b={1,2,4,5}
                print a&lt;b
            </pre>
        </div>  
        <div class="col-12">b. True</div>
    </div>       
    
</div>

</div>
</body>
</html>