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
    <title>C++ Easy Question</title>
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

        <h1> Correct Answers: C++_Easy</h1>
    </div>
    
    
        <div class="row m-3 correct">
            <div class="col-12">1.What is size of int data type in cpp?</div>
            <div class="col-12">d. Depends on Compiler</div>  
        </div>
        <div class="row m-3 correct">
            <div class="col-12">2.What following operator is called "?:"</div>
            <div class="col-12">c. Ternary Operator</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">3.What is currect syntax of for loop?</div>
            <div class="col-12">a. for(initialization;condition; increment/decrement)</div>
            
        </div>
        <div class="row m-3 correct">
            <div class="col-12">4.Can we overload functions in C++?</div>
            <div class="col-12">a.  Yes</div>
            
        </div>    
        <div class="row m-3 correct">
            <div class="col-12">5.Which operator has highest precedence in * / % ?</div>
            <div class="col-12">d.  all have same precedence</div>  
        </div>
        <div class="row m-3 correct">
            <div class="col-12">6.What is the full form of oop</div>
            <div class="col-12">a. Object oriented programming</div>
        </div>
        <div class="row m-3 correct">
            <div class="col-12">7.Can a Structure contain pointer to itself?</div>
        <div class="col-12">a. Yes</div>
        
    </div>
    <div class="row m-3 correct">
        <div class="col-12">8.What should be the location of "using namespace std;" in c++ code?</div>
        
        <div class="col-12">d. After all #inludes</div>  
    </div>
    <div class="row m-3 correct">    
        <div class="col-12">9.What do you understand by GUI?</div>
        
        <div class="col-12">d.  Both A and B</div>  
    </div>
    <div class="row m-3 correct">
        <div class="col-12">10.A constructor is a special type of?</div>
        <div class="col-12">c. function</div>
    </div>
    
    
</div>            
</body>
</html>