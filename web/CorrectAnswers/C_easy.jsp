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
    <title>C Easy Question</title>
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

<body background="../images/bg1.jpg" onload="noBack">
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

        <div class="row justify-content-center"> <h1> Correct Answers: C_Easy</h1> </div>
        
        
        <div class="row m-3 correct">
            
            <div class="col-12">1. C is invented in which year ?</div>
            <div class="col-12">a. 1971</div>
            
        </div>
        <div class="row m-3 correct">
            <div class="col-12">2.The format identifier %i is also used for _____ data type?</div>
            
            <div class="col-12">b. int</div>
            
        </div>
        <div class="row m-3 correct">
            <div class="col-12">3.What is the size of an int data type?</div>
            <div class="col-12">c. Depends on the system/compiler</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">4.Who is father of C Language? </div>
            
            <div class="col-12">b. Dennis Ritchie</div>

        </div>
        <div class="row m-3 correct">
            <div class="col-12">5.Which of the following shows the correct hierarchy of arithmetic operations in C
            </div>
            <div class="col-12">d. * / + -</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">6.The Default Parameter Passing Mechanism is called as </div>
            <div class="col-12">a. Call by Value</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">7.In switch statement, each case instance value must be _______? </div>
            <div class="col-12">a. Constant</div>
            
        </div>
        <div class="row m-3 correct">
            
            <div class="col-12">8.What is the right way to access value of structure variable book{ price, page }?</div>
            <div class="col-12">a. printf("%d%d", book.price, book.page);</div>
            
        </div>
        <div class="row m-3 correct">
            <div class="col-12">9. What will be the value of `a` after the following code is executed
                <pre>
                    #define square(x) x*x
                    a = square(2+3)
                </pre>
            </div>
            <div class="col-12">c. 11</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">10.The keyword break cannot be simply used within:
            </div>
            <div class="col-12">b. if-else</div>
        </div>
        
    </div>
    </body>
    
    </html>